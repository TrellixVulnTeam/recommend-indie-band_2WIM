import pylast
import pandas as pd
import numpy as np
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


def getTags(table, artist1, artist2, artist3, artist4, artist5):
    # User given artists from web form
    user_artist1 = artist1.title()
    user_artist2 = artist2.title()
    user_artist3 = artist3.title()
    user_artist4 = artist4.title()
    user_artist5 = artist5.title()

    # Connect to API
    network = Connect()

    # Find artists
    get_artist1 = network.get_artist(user_artist1)
    get_artist2 = network.get_artist(user_artist2)
    get_artist3 = network.get_artist(user_artist3)
    get_artist4 = network.get_artist(user_artist4)
    get_artist5 = network.get_artist(user_artist5)

    # Get artist tags
    info1 = get_artist1.get_top_tags(limit=5)
    info2 = get_artist2.get_top_tags(limit=5)
    info3 = get_artist3.get_top_tags(limit=5)
    info4 = get_artist4.get_top_tags(limit=5)
    info5 = get_artist5.get_top_tags(limit=5)

    # Initialize empty tag list
    tag_list = []
    # For each artist, add in top 5 tags and weights of those tags
    for tag in info1:
        tag_list.append(str(tag[0]))
        tag_list.append(tag[1])

    for tag2 in info2:
        tag_list.append(str(tag2[0]))
        tag_list.append(tag2[1])

    for tag3 in info3:
        tag_list.append(str(tag3[0]))
        tag_list.append(tag3[1])

    for tag4 in info4:
        tag_list.append(str(tag4[0]))
        tag_list.append(tag4[1])

    for tag5 in info5:
        tag_list.append(str(tag5[0]))
        tag_list.append(tag5[1])
    return tag_list


def Convert(table, artist1, artist2, artist3, artist4, artist5):
    tag_list = getTags(table, artist1, artist2, artist3, artist4, artist5)
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


def Scale(table, artist1, artist2, artist3, artist4, artist5):
    tag_frame = Convert(table, artist1, artist2, artist3, artist4, artist5)
    tag_frame = tag_frame.sort_values(by='weight', ascending=False)
    tag_frame = tag_frame[0:6]

    # Scale tag weights to 100
    tagMax = tag_frame['weight'].iloc[0]
    tagMin = tag_frame['weight'].iloc[-1]
    x = []
    for weight in tag_frame['weight']:
        scaledWeight = (((weight - tagMin) * 100) / (tagMax - tagMin))
        x.append(scaledWeight)

    tag_frame['weight'] = x

    # When calling API, it would always bring the results in different orders
    # So, I sort the DF and save it as new DF, so it's always in same order
    userFrame = tag_frame.sort_values(by='weight', ascending=False)
    userFrame.index = range(1, len(userFrame) + 1)

    return userFrame


def getDBData(table, artist1, artist2, artist3, artist4, artist5):
    # Connect to DB and get all of the data stored in a DF
    results = getData(table)

    columns = ['artist', 'tag1', 'weight1', 'tag2', 'weight2', 'tag3',
               'weight3', 'tag4', 'weight4', 'tag5', 'weight5']

    # Put DB call into a DF
    dbFrame = pd.DataFrame(results, columns=columns)

    return dbFrame


def Recommend(table, artist1, artist2, artist3, artist4, artist5):
    userFrame = Scale(table, artist1, artist2, artist3, artist4, artist5)
    dbFrame = getDBData(table, artist1, artist2, artist3, artist4, artist5)

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
        for u in userFrame.iterrows():
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
            i += 1
        j += 1

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
    return tagDisplay


def getArtists(table, artist1, artist2, artist3, artist4, artist5):
    tagDisplay = Recommend(table, artist1, artist2, artist3, artist4, artist5)

    dif1 = tagDisplay['dif1']
    dif2 = tagDisplay['dif2']
    dif3 = tagDisplay['dif3']
    dif4 = tagDisplay['dif4']
    dif5 = tagDisplay['dif5']

    # add together weights for tags
    totalDif = [dif1[k] + dif2[k] + dif3[k] + dif4[k] +
                dif5[k] for k in range(len(dif1))]

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
        if tagDisplay['artist'][result] == artist1:
            pass
        elif tagDisplay['artist'][result] == artist2:
            pass
        elif tagDisplay['artist'][result] == artist3:
            pass
        elif tagDisplay['artist'][result] == artist4:
            pass
        elif tagDisplay['artist'][result] == artist5:
            pass
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
