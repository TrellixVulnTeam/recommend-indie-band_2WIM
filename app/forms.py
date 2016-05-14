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
                             choices=[('Bonnaroo', 'Bonnaroo')])
