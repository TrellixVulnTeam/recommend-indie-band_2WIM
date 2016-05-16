import pylast
import psycopg2

artists = [
'Arcade Fire',
'Alabama Shakes',
'Major Lazer',
'FKA Twigs',
'Silversun Pickups',
'Broken Social Scene',
'DJ Khaled',
'Mike D',
'Lindsey Stirling',
'Netsky',
'Preservation Hall Jazz Band',
'DJ Harvey',
'Madlib',
'De Lux',
'Here We Go Magic',
'White Lung',
'Algiers',
'Little Scream',
'Justin Strauss',
'Kendrick Lamar',
'Sufjan Stevens',
'The National',
'Flosstradamus',
'Blood Orange',
'Foals',
'Daughter',
'Anderson .Paak',
'AlunaGeorge',
'Jai Wolf',
'Kaytranada',
'TOKiMONSTA',
'The Julie Ruin',
'Oh Wonder',
'Melanie Martinez',
'Ex Hex',
'Aurora',
'Horse Meat Disco',
'Museum of Love',
'Caveman',
'JDH & Dave P',
'LCD Soundsystem',
'Sia',
'ASAP Rocky',
'Kurt Vile',
'Run the Jewels',
'Grace Potter',
'RUFUS DU SOL',
'Flatbush Zombies',
'The Front Bottoms',
'SZA',
'Nathaniel Rateliff & The Night Sweats',
'Holy Ghost!',
'Tourist',
'Tensnake',
'Classixx',
'Cassy',
'Show Me the Body',
'Prinze George',
'The Black Madonna',
'Lloydski']

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
				'INSERT INTO "panorama"(artist,tag1,weight1,tag2,weight2, \
                tag3,weight3,tag4,weight4,tag5,weight5) \
                VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (k,))
            print('insert successful')
        # If theres an error, skip it
        except psycopg2.IntegrityError:
            con.rollback()
            pass

    con.commit()
