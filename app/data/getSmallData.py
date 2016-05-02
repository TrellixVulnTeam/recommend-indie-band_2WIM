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

    # I changed the tag using under 1000, 2000, and 5000 listeners
    small = network.get_tag("Under 1000 Listeners")
    smallArtists = small.get_top_artists(limit=1000)
    tag_list = []

    for artist in smallArtists:
        temp_tag_list = []
        # Get the artist's name for insertion to DB
        temp_art = network.get_artist(str(artist[0]))
        # Get the artist's top 5 tags
        temp_tags = temp_art.get_top_tags(limit=5)
        temp_tag_list.append(str(temp_art))
        # For each of those 5 tags
        for tag in temp_tags:
            # Append the tag and its weight to that temporary list
            temp_tag_list.append(str(tag[0]))
            temp_tag_list.append(int(tag[1]))

        while len(temp_tag_list) < 10:
            temp_tag_list.append('')
            temp_tag_list.append(0)

        i = 0
        for row in temp_tag_list:
            for givenTag in tags:
                if givenTag in temp_tag_list and i < 1:
                    # Append data extracted to a list
                    tag_list.extend(temp_tag_list)
                    i += 1
                else:
                    pass
        # Format the data nicer for DB insertion
        insert_data = [tuple(tag_list[j:j+11]) for j in range(0, len(tag_list),
                                                              11)]
        # For each tuple in our insert data array
        for k in insert_data:
            try:
                # Insert it into the DB
                cur.executemany(
					'INSERT INTO "artistsSmall"(artist,tag1,weight1,tag2, \
                    weight2, tag3,weight3,tag4,weight4,tag5,weight5) \
                    VALUES(?,?,?,?,?,?,?,?,?,?,?)', (k,))
            # If theres an error, skip it
            except sqlite3.IntegrityError:
                con.rollback()
                pass
            con.commit()
            print("Insert Successful.")
getByTag()
