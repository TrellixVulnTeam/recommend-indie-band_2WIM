import pylast
import pandas as pd
import psycopg2
import datetime
import config


def Connect():
    network = pylast.LastFMNetwork(api_key=config.API_KEY,
                                   api_secret=config.API_SECRET,
                                   username=config.username,
                                   password_hash=config.password_hash)

    return network


def dbCon():
    con = psycopg2.connect(host=config.host, database=config.dbname,
                           user=config.user, password=config.password)
    return con


def insertData(searchType, artist1, artist2, artist3, artist4, artist5):
    curTime = datetime.datetime.now()
    con = dbCon()
    cur = con.cursor()
    cur.execute('INSERT INTO usersearch (curtime, searchType, artist1, artist2, \
                artist3, artist4, artist5) VALUES (%s, %s, %s, %s, %s, %s, \
                %s)', (curTime, searchType, artist1, artist2, artist3, artist4,
                       artist5))
    con.commit()
    cur.close()
    con.close()


def getData(table):
    con = dbCon()
    cur = con.cursor()
    cur.execute('SELECT * FROM ' + table)
    results = cur.fetchall()
    cur.close()

    return results


def getTags(table, *artists):
    # User given artists from web form
    tag_list = []
    network = Connect()
    for artist in artists:
        temp_art = network.get_artist(artist)
        temp_info = temp_art.get_top_tags(limit=5)

        for tag in temp_info:
            tag_list.append(str(tag[0]))
            tag_list.append(tag[1])

    return tag_list


def Convert(table, *artists):
    tag_list = getTags(table, *artists)
    tag_name = []
    tag_weight = []
    d = {}

    # Separate the tag list into two lists: names and weights
    i = 2
    for tag in tag_list:
        if i % 2 == 0:
            tag_name.append(tag)
        else:
            tag_weight.append(int(tag))
        i += 1

    for tag2, weight in zip(tag_name, tag_weight):
        if tag2 in d:
            d[tag2] += weight
        else:
            d[tag2] = weight

    new_tags = [tag for tag in d]
    new_weights = [d[tag] for tag in new_tags]

    # Combine the two lists into a single DF
    tag_frame = pd.DataFrame({'tag': new_tags, 'weight': new_weights})

    return tag_frame


def Scale(table, *artists):
    tag_frame = Convert(table, *artists)
    tag_frame = tag_frame.sort_values(by='weight', ascending=False)
    tag_frame = tag_frame[0:6]

    # Scale tag weights to 100
    tagMax = tag_frame['weight'].iloc[0]
    tagMin = tag_frame['weight'].iloc[-1]
    x = []
    for weight in tag_frame['weight']:
        scaledWeight = (((weight - tagMin) * 100) / (tagMax - tagMin))
        if scaledWeight == 0:
            scaledWeight = 5
        x.append(scaledWeight)

    tag_frame['weight'] = x

    # When calling API, it would always bring the results in different orders
    # So, I sort the DF and save it as new DF, so it's always in same order
    userFrame = tag_frame.sort_values(by='weight', ascending=False)
    userFrame.index = range(1, len(userFrame) + 1)

    return userFrame


def getDBData(table, *artists):
    # Connect to DB and get all of the data stored in a DF
    results = getData(table)

    columns = ['artist', 'tag1', 'weight1', 'tag2', 'weight2', 'tag3',
               'weight3', 'tag4', 'weight4', 'tag5', 'weight5']

    # Put DB call into a DF
    dbFrame = pd.DataFrame(results, columns=columns)

    return dbFrame


def Recommend(table, *artists):
    userFrame = Scale(table, *artists)
    userFrame = userFrame[0:5]
    dbFrame = getDBData(table, *artists)

    # I strip all whitespace because character fields are set at length of 50
    # So there's a lot of whitespace to be trimmed for comparisons later
    dbFrame["artist"] = dbFrame["artist"]
    dbFrame["tag1"] = dbFrame["tag1"]
    dbFrame["tag2"] = dbFrame["tag2"]
    dbFrame["tag3"] = dbFrame["tag3"]
    dbFrame["tag4"] = dbFrame["tag4"]
    dbFrame["tag5"] = dbFrame["tag5"]

    # empty lists to append the tag weight differences in
    # one list for each tag weight in the db
    dif1 = []
    dif2 = []
    dif3 = []
    dif4 = []
    dif5 = []

    # Initialize list to use for displaying what tags matched
    artistDf = []
    tag1 = []
    tag2 = []
    tag3 = []
    tag4 = []
    tag5 = []

    # Begin loop through both DF's to find tag matches
    i = 1
    j = 0
    for d in dbFrame.iterrows():
        i = 1
        artistDf.append(dbFrame['artist'][j])
        tag1.append(dbFrame['tag1'][j])
        tag2.append(dbFrame['tag2'][j])
        tag3.append(dbFrame['tag3'][j])
        tag4.append(dbFrame['tag4'][j])
        tag5.append(dbFrame['tag5'][j])

        for u in userFrame.iterrows():
            while i <= 5:
                if userFrame['tag'][i] == dbFrame['tag1'][j]:
                    thisDif = (abs(int(userFrame['weight'][i] -
                                       int(dbFrame['weight1'][j]))))
                    thisDif = abs(thisDif - 100)
                    dif1.append(thisDif)

                elif userFrame['tag'][i] == dbFrame['tag2'][j]:
                    thisDif = (abs(int(userFrame['weight'][i] -
                                       int(dbFrame['weight2'][j]))))
                    thisDif = abs(thisDif - 100)
                    dif2.append(thisDif)

                elif userFrame['tag'][i] == dbFrame['tag3'][j]:
                    thisDif = (abs(int(userFrame['weight'][i] -
                                       int(dbFrame['weight3'][j]))))
                    thisDif = abs(thisDif - 100)
                    dif3.append(thisDif)

                elif userFrame['tag'][i] == dbFrame['tag4'][j]:
                    thisDif = (abs(int(userFrame['weight'][i] -
                                       int(dbFrame['weight4'][j]))))
                    thisDif = abs(thisDif - 100)
                    dif4.append(thisDif)

                elif userFrame['tag'][i] == dbFrame['tag5'][j]:
                    thisDif = (abs(int(userFrame['weight'][i] -
                                       int(dbFrame['weight5'][j]))))
                    thisDif = abs(thisDif - 100)
                    dif5.append(thisDif)
                i += 1
        j += 1
        if len(dif1) < j:
            dif1.append(0)
        if len(dif2) < j:
            dif2.append(0)
        if len(dif3) < j:
            dif3.append(0)
        if len(dif4) < j:
            dif4.append(0)
        if len(dif5) < j:
            dif5.append(0)

        '''
        if i == 1:
            # Since these will all be executed once, I just added
            # the artist name in the first block
            artistDf.append(dbFrame['artist'][j])
            tag1.append(dbFrame['tag1'][j])
            if userFrame['tag'][i] == dbFrame['tag1'][j]:
                thisDif = (abs(int(userFrame['weight'][i] -
                                   int(dbFrame['weight1'][j]))))
                thisDif = abs(thisDif - 100)
                dif1.append(thisDif)
            else:
                dif1.append(0)
        if i == 2:
            tag2.append(dbFrame['tag2'][j])
            if userFrame['tag'][i] == dbFrame['tag2'][j]:
                thisDif = (abs(int(userFrame['weight'][i] -
                                   int(dbFrame['weight2'][j]))))
                thisDif = abs(thisDif - 100)
                dif2.append(thisDif)
            else:
                dif2.append(0)
        if i == 3:
            tag3.append(dbFrame['tag3'][j])
            if userFrame['tag'][i] == dbFrame['tag3'][j]:
                thisDif = (abs(int(userFrame['weight'][i] -
                                   int(dbFrame['weight3'][j]))))
                thisDif = abs(thisDif - 100)
                dif3.append(thisDif)
            else:
                dif3.append(0)
        if i == 4:
            tag4.append(dbFrame['tag4'][j])
            if userFrame['tag'][i] == dbFrame['tag4'][j]:
                thisDif = (abs(int(userFrame['weight'][i] -
                                   int(dbFrame['weight4'][j]))))
                thisDif = abs(thisDif - 100)
                dif4.append(thisDif)
            else:
                dif4.append(0)
        if i == 5:
            tag5.append(dbFrame['tag5'][j])
            if userFrame['tag'][i] == dbFrame['tag5'][j]:
                thisDif = (abs(int(userFrame['weight'][i] -
                                   int(dbFrame['weight5'][j]))))
                thisDif = abs(thisDif - 100)
                dif5.append(thisDif)
            else:
                dif5.append(0)
        '''

    print(len(artistDf), len(tag1), len(dif1), len(tag2), len(dif2), len(dif3), len(dif4), len(dif5))
    tagDisplay = pd.DataFrame({'artist': artistDf,
                               'tag1': tag1,
                               'dif1': dif1,
                               'tag2': tag2,
                               'dif2': dif2,
                               'tag3': tag3,
                               'dif3': dif3,
                               'tag4': tag4,
                               'dif4': dif4,
                               'tag5': tag5,
                               'dif5': dif5})
    tagDisplay.to_csv(r'E:\Google Drive\Programming\IndieMusicRec.csv')
    return tagDisplay


def getArtists(table, *artists):
    tagDisplay = Recommend(table, *artists)

    dif1 = tagDisplay['dif1']
    dif2 = tagDisplay['dif2']
    dif3 = tagDisplay['dif3']
    dif4 = tagDisplay['dif4']
    dif5 = tagDisplay['dif5']

    # add together weights for tags
    totalDif = [dif1[k] + dif2[k] + dif3[k] + dif4[k] +
                dif5[k] for k in range(len(dif1))]
    print(totalDif)
    # put the differences in a data frame and sort it
    d2 = {'weights': totalDif}
    totalDF = pd.DataFrame(d2)
    totalDF_sort = totalDF.sort_values(by='weights', ascending=False)

    # get the indexes of the top artists so I can index the dbFrame to get
    # the actual artist names
    top50 = totalDF_sort.head(25)
    topIndex = top50.index.values

    finArtist = []
    finTag1 = []
    finDif1 = []
    finTag2 = []
    finDif2 = []
    finTag3 = []
    finDif3 = []
    finTag4 = []
    finDif4 = []
    finTag5 = []
    finDif5 = []

    # only adding in artists that aren't the ones the put in
    # if it matches one that the user enters, it passes
    for result in topIndex:
        for artist in artists:
            if tagDisplay['artist'][result] == artist:
                break
        else:
            finArtist.append(tagDisplay['artist'][result])
            finTag1.append(tagDisplay['tag1'][result])
            finDif1.append(tagDisplay['dif1'][result])
            finTag2.append(tagDisplay['tag2'][result])
            finDif2.append(tagDisplay['dif2'][result])
            finTag3.append(tagDisplay['tag3'][result])
            finDif3.append(tagDisplay['dif3'][result])
            finTag4.append(tagDisplay['tag4'][result])
            finDif4.append(tagDisplay['dif4'][result])
            finTag5.append(tagDisplay['tag5'][result])
            finDif5.append(tagDisplay['dif5'][result])

    recArtists = pd.DataFrame({'artist': finArtist,
                               'tag1': finTag1,
                               'dif1': finDif1,
                               'tag2': finTag2,
                               'dif2': finDif2,
                               'tag3': finTag3,
                               'dif3': finDif3,
                               'tag4': finTag4,
                               'dif4': finDif4,
                               'tag5': finTag5,
                               'dif5': finDif5})

    return recArtists
