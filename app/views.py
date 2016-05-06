from flask import render_template, request
import pylast
import json

from app import app
from .models import getArtists, insertData
from .forms import ArtistsForm


@app.route('/', methods=['GET', 'POST'])
def home():
    form = ArtistsForm()
    return render_template('home.html', form=form)


@app.route('/results', methods=['GET', 'POST'])
def results():
    form = ArtistsForm()
    error = None
    try:
        if request.method == 'POST' and form.validate():
            table = 'Artists'
            searchType = 'normal'
            artist1 = request.form['artist1']
            artist2 = request.form['artist2']
            artist3 = request.form['artist3']
            artist4 = request.form['artist4']
            artist5 = request.form['artist5']
            print(artist1)
            print('artist2: ' + artist2)

            insertData(searchType, artist1, artist2, artist3, artist4, artist5)
            results = getArtists(table, artist1, artist2, artist3, artist4,
                                 artist5).values.tolist()
            return render_template('results.html', results=results)
        else:
            error = "Please be sure to enter 5 artists with correct spelling" \
                    " and punctuation"

    except pylast.WSError:
        return render_template('error.html')
    return render_template('home.html', form=form, error=error)


@app.route('/small', methods=['GET', 'POST'])
def small():
    smallForm = ArtistsForm()
    return render_template('small.html', smallForm=smallForm)


@app.route('/small_results', methods=['GET', 'POST'])
def smallResults():
    smallForm = ArtistsForm()
    error = None
    try:
        if request.method == 'POST' and smallForm.validate():
            table = 'artistsSmall'
            searchType = 'small'
            artist1 = request.form['artist1'].title()
            artist2 = request.form['artist2'].title()
            artist3 = request.form['artist3'].title()
            artist4 = request.form['artist4'].title()
            artist5 = request.form['artist5'].title()
            insertData(searchType, artist1, artist2, artist3, artist4, artist5)
            smallResults = getArtists(table, artist1, artist2, artist3,
                                      artist4, artist5).values.tolist()
            return render_template('smallResults.html',
                                   smallResults=smallResults)
        else:
            error = "Please be sure to enter 5 artists with correct spelling" \
                    " and punctuation"
    except pylast.WSError:
        return render_template('error.html')
    return render_template('small.html', smallForm=smallForm, error=error)


@app.route('/artist/<artist>')
def artistPage(artist):
    return render_template('artistPage.html', artist=artist)


@app.route('/how_it_works')
def how():
    return render_template('how.html')
