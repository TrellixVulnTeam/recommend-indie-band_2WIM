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

'''
class HiddenForm(Form):
    hidden1 = TextField('hidden1', [validators.Required(
        "Please enter an artist for each field")])
    hidden2 = TextField('hidden2', [validators.Required(
        "Please enter an artist for each field")])
    hidden3 = TextField('hidden3', [validators.Required(
        "Please enter an artist for each field")])
    hidden4 = TextField('hidden4', [validators.Required(
        "Please enter an artist for each field")])
    hidden5 = TextField('hidden5', [validators.Required(
        "Please enter an artist for each field")])
'''
