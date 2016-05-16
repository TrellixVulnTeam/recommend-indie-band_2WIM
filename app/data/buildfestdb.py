import pylast
import psycopg2

artists = [
            'Teddy Abrams',
            'Sarah Jarosz',
            'All Them Witches',
            'Banners',
            'Nothing',
            'Madisen Ward & The Mama Bear',
            'Alex G',
            'Jazz Cartier',
            'Future Thieves',
            'Myzica',
            'The Shadowboxers',
            'Death Cab For Cutie',
            'Ryan Adams',
            'Brandi Carlile',
            'Gary Clark Jr.',
            'Blackberry Smoke',
            'Washed Out',
            'Femi Kuti & Positive Force',
            'Unknown Mortal Orchestra',
            'AlunaGeorge',
            'White Denim',
            'Heartless Bastards',
            'Patrick Watson',
            'Speedy Ortiz',
            'Anderson East',
            'Steve Gunn',
            'The Suffers',
            'Saintseneca',
            'Los Colognes',
            'River Tiber',
            'Joan Shelley']

network = pylast.LastFMNetwork(api_key="bd7e293a51b53716d502db4d74835f01",
                               api_secret="b11413d5d68dad40029e06d1d33f753f",
                               username="dschuler36",
                               password_hash=pylast.md5("s002443"))

con = psycopg2.connect(host='ec2-54-197-230-161.compute-1.amazonaws.com', database='d2m84f7bec17sh',
                       user='hlakkzlawtveie', password='BH4t1gKK7hcCeyE8pG8_tnV9S0')
cur = con.cursor()

tag_list = []
for artist in artists:
    print(artist)
    temp_tag_list = []
    temp_art = network.get_artist(artist)
    tags = temp_art.get_top_tags(limit=5)

    for tag in tags:
        temp_tag_list.append(str(tag[0]))
        temp_tag_list.append(int(tag[1]))

    while len(temp_tag_list) < 10:
        temp_tag_list.append('')
        temp_tag_list.append(0)

    temp_art = artist
    tag_list.append(str(temp_art))
    tag_list.extend(temp_tag_list)

    insert_data = [tuple(tag_list[j:j+11]) for j in range(0, len(tag_list),
                                                          11)]

    for k in insert_data:
        try:
            # Insert it into the DB
            cur.executemany(
				'INSERT INTO "forecastle"(artist,tag1,weight1,tag2,weight2, \
                tag3,weight3,tag4,weight4,tag5,weight5) \
                VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (k,))
            print('insert successful')
        # If theres an error, skip it
        except psycopg2.IntegrityError:
            con.rollback()
            pass

    con.commit()
