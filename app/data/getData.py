import pylast
import sqlite3
import apiConfig


# Last.fm api auth
network = pylast.LastFMNetwork(api_key=apiConfig.API_KEY,
                               api_secret=apiConfig.API_SECRET,
                               username=apiConfig.username,
                               password_hash=apiConfig.password_hash)

# Connect to DB
con = sqlite3.connect('IndieMusicRec.db')
cur = con.cursor()


def getByTag():
    # List of tags we want
    tags = ['Indie', 'Indie Rock', 'Indie Folk', 'Indie Pop',
	        'alternaive indie', 'Blues Rock', 'Classic Rock', 'Psychedelic',
            'Alternative', 'Dream pop', 'Shoegaze', 'Indietronica',
			'post-rock', 'synthpop', 'new wave', 'no wave', 'idm', 'chillwave',
            'madchester', 'alternative dance', 'progressive rock', 'art rock',
            'experimental pop', 'singer-songwriter', 'indie hip hop',
			'noise rock', 'freak folk', 'post-punk', 'post-punk revival',
			'americana', 'alt-country', 'southern rock', 'ambient', 'Lo-Fi',
			'Neo-Psychedelia', 'Psychedelic Rock', 'punk', 'seen live', 'folk',
			'dream pop', 'jam', 'experimental', 'surf rock', 'psych rock',
            'folk-punk']

    # Initialize tag list which will be used in loop below
    tag_list = []

    for tag in tags:

        # Get the tag on Last.fm
        artistTag = network.get_tag(tag)
        artist = network.get

        # Then get the top 500 artists of that tag
        artists = artistTag.get_top_artists(limit=500)

        # For each artist
        for artist in artists:

            # initialize empty list. Note this will be emptied for each artist
            temp_tag_list = []
            # Get the artist's name for insertion to DB
            temp_art = network.get_artist(str(artist[0]))
            # Get the artist's top 5 tags
            temp_tags = temp_art.get_top_tags(limit=5)

            # For each of those 5 tags
            for tag in temp_tags:

                # Append the tag and its weight to that temporary list
                temp_tag_list.append(str(tag[0]))
                temp_tag_list.append(int(tag[1]))

            # Not all artists will have 5 tags
            # If they don't fill the other spots with blanks
            while len(temp_tag_list) < 10:
                temp_tag_list.append('')
                temp_tag_list.append(0)

            # Append data extracted to a list
            tag_list.append(str(temp_art))
            tag_list.extend(temp_tag_list)

        # Format the data nicer for DB insertion
        insert_data = [tuple(tag_list[j:j+11]) for j in range(0, len(tag_list),
		                                                      11)]

        # For each tuple in our insert data array
        for k in insert_data:
            try:
                # Insert it into the DB
                cur.executemany(
					'INSERT INTO "artists"(artist,tag1,weight1,tag2,weight2, \
                    tag3,weight3,tag4,weight4,tag5,weight5) \
                    VALUES(?,?,?,?,?,?,?,?,?,?,?)', (k,))
            # If theres an error, skip it
            except sqlite3.IntegrityError:
                con.rollback()
                pass

        con.commit()

# After looking at the results generated above
# I was unhappy some artists were missing
# I use this function if I think of a single artist
# I really want to add to the DB


def getSingleArtist():
    # This code is pretty much the same as above, but only adds one artist
    # Change the string in the line below to add whatever artist you want
    spec_art = network.get_artist('Mac Demarco')
    spec_tags = spec_art.get_top_tags(limit=5)
    temp_spec_list = []
    spec_list = []

    for spec_tag in spec_tags:
        temp_spec_list.append(str(spec_tag[0]))
        temp_spec_list.append(int(spec_tag[1]))

    while len(temp_spec_list) < 10:
        temp_spec_list.append('')
        temp_spec_list.append(0)

    spec_list.append(str(spec_art))
    spec_list.extend(temp_spec_list)
    print(spec_list)

    cur.execute('INSERT INTO "artists"(artist,tag1,weight1,tag2,weight2,tag3, \
                weight3,tag4,weight4,tag5,weight5) \
                VALUES(?,?,?,?,?,?,?,?,?,?,?)', (spec_list))
    con.commit()


# Driver
if __name__ == '__main__':

    # I use this as a quick way to only run one function at a time
    # Comment whichever function you don't want to run
    # Uncomment the other

    getByTag()
    # getSingleArtist()
