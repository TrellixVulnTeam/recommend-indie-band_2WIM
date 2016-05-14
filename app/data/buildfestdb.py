import pylast
import psycopg2
'''
'Pearl Jam', 'Dead & Company', 'LCD Soundsystem', 'J. Cole',
'Ellie Goulding', 'Macklemore & Ryan Lewis', 'Tame Impala',
'Death Cab for Cutie', 'M83', 'Haim', 'Halsey', 'Ween',
'Jason Isbell', 'Chvrches', 'Miguel', 'Chris Stapleton',
'Judd Apatow', 'Bryson Tiller', 'The Chainsmokers',
'Big Grams', 'Band of Horses', 'Leon Bridges', 'Grace Potter',
'Father John Misty', 'Adam Devine', 'Purity Ring', 'Vanessa Bayer',
'The Claypool Lennon Delirium', 'Two Door Cinema Club', 'Sam Hunt',
'Flosstradamus', 'Zeds Dead', 'Pete Davidson', 'Adventure Club',
'Tyler the Creator', 'Griz', 'Charles Bradley',
'Lamb of God', 'Nathaniel Rateliff & the Night Sweats',
'Bridget Everett', 'Kurt Vile', 'Blood Orange',
'Lord Huron', 'RL Grime', 'X Ambassadors', 'St. Lucia',
'Lucius', 'Vince Staples', 'Third Eye Blind',
'John Early', 'Cymande', 'Misterwives', 'Sean Patton', 'Clutch',
'Goldlink', 'Lettuce', 'Nate Bargatze', 'Cashmere Cat',
'FIDLAR', 'Ibeyi', 'Keys n Krates',
'Sam Bush Band', 'The Wood Brothers', 'Saint Motel',
'Daughter', 'The Floozies', 'Beth Stelling', 'Marian Hill',
'Kamasi Washington', 'Børns', 'Post Malone', 'Bob Moses', 'Adam Ray',
'Shamir', 'Allen Stone', 'Brett Dennen', 'Oh Wonder',
'Boy & Bear', 'Dungen',  'Judah & The Lion', 'Steve Gunn',
'Steep Canyon Rangers', 'The Oh Hellos', 'The Internet', 'John Moreland',
'Andra Day', 'Anderson East', 'Twin Peaks', 'Bully', 'Natalie Prass',
'Chicano Batman', 'Givers', 'Hermitude'
'Jarryd James',
'Lizzo', 'Papadosio', 'Rayland Baxter', 'Vulfpeck',
'Sara Watkins', 'The Knocks', 'Ian Abramson', 'Waxahatchee',
'Beach Fossils', 'Whilk and Misky', 'Hundred Waters', 'The London Souls',
'Lolawolf', 'Civil Twilight', 'Roman Gianarthur', 'Lany', 'Sam Jay',
'Con Brio', 'New Breed Brass Band', 'DJ Logic',
'Quickie Mart', 'DJ Uncle Jesse', 'E.Feld', 'Full Service Party',
'Jonathan Toubin', 'KLU', 'Lane 8', 'NSR', 'Tiki Disco',
'Rachel Feinstein', 'FKJ', 'Wet', 'Hinds', 'Joseph', 'Doe Paoro',
'Amanda Shires', 'Amasa Hines', 'Andrew Combs', 'Arkells', 'Aubrie Sellers',
'Austin Plaine', 'Cardiknox',
'Dylan LeBlanc',
'Finish Ticket', 'Firekid', 'Flux Capacitor', 'Grace Mitchell',
'Grandma Sparrow', 'Henry Wagons', 'Holy White Hounds', 'Isaac Gracie',
'Joe Hertler & The Rainbow Seekers',
   'Korey Dane', 'Lael Neale', 'Lawrence', 'Luke Bell', 'Mail the Horse',
   'Maren Morris', 'Margaret Glaspy', 'Mothers', 'Polly A.', 'Polyenso',
   'Powers', 'Promised Land Sound', 'Public Access T.V.', 'Quaildogs',
   'Ron Gallo', 'Roots of a Rebellion', 'Sir The Baptist', 'Stokeswood',
   'Stretch Armstrong', 'Sun Club', 'Sunflower Bean',
'''
artists = [
'Swim Deep',
         'The Record Company', 'Whitney', 'Jon Gabrus',
            'Zach Heckendorf']

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
				'INSERT INTO "bonnaroo"(artist,tag1,weight1,tag2,weight2, \
                tag3,weight3,tag4,weight4,tag5,weight5) \
                VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (k,))
            print('insert successful')
        # If theres an error, skip it
        except psycopg2.IntegrityError:
            con.rollback()
            pass

    con.commit()
