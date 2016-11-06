from wtforms import TextField, SelectField
from flask.ext.wtf import Form
import config


class ArtistsForm(Form):
    artist1 = TextField()
    artist2 = TextField()
    artist3 = TextField()
    artist4 = TextField()
    artist5 = TextField()
    artist6 = TextField()
    artist7 = TextField()
    artist8 = TextField()
    artist9 = TextField()
    artist10 = TextField()


class FestivalForm(Form):
    artist1 = TextField()
    artist2 = TextField()
    artist3 = TextField()
    artist4 = TextField()
    artist5 = TextField()
    artist6 = TextField()
    artist7 = TextField()
    artist8 = TextField()
    artist9 = TextField()
    artist10 = TextField()
    selectFest = SelectField("Select Festival: ",
                             choices=[('Bonnaroo', 'Bonnaroo'),
                                      ('Forecastle', 'Forecastle'),
                                      ("govball", "Governor's Ball"),
                                      ('Lollapalooza', 'Lollapalooza'),
                                      ('Panorama', 'Panorama'),
                                      ('Pitchfork', 'Pitchfork')])

class TopAlbums(Form):
    artist1 = TextField()
    album1 = TextField()
    artist2 = TextField()
    album2 = TextField()
    artist3 = TextField()
    album3 = TextField()
    artist4 = TextField()
    album4 = TextField()
    artist5 = TextField()
    album5 = TextField()
    artist6 = TextField()
    album6 = TextField()
    artist7 = TextField()
    album7 = TextField()
    artist8 = TextField()
    album8 = TextField()
    artist9 = TextField()
    album9 = TextField()
    artist10 = TextField()
    album10 = TextField()
