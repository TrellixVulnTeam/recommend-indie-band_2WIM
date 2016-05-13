from models_test import getArtists

artist1 = 'Moon Taxi'

results = getArtists('Artists', artist1, 'Pinegrove', 'alt-J', 'Tycho', 'Flume', 'Trampled by Turtles').values.tolist()
print(results)
