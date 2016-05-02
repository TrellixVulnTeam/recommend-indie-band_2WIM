from wtforms import TextField, validators
from flask.ext.wtf import Form
import config


class ArtistsForm(Form):
    artist1 = TextField('Artist 1', [validators.Required(
        "Please enter an artist for each field")])
    artist2 = TextField('Artist 2', [validators.Required(
        "Please enter an artist for each field")])
    artist3 = TextField('Artist 3', [validators.Required(
        "Please enter an artist for each field")])
    artist4 = TextField('Artist 4', [validators.Required(
        "Please enter an artist for each field")])
    artist5 = TextField('Artist 5', [validators.Required(
        "Please enter an artist for each field")])
