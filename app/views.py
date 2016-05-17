from flask import render_template, request
import pylast

from app import app
from .models import getArtists
from .forms import ArtistsForm, FestivalForm
from .tasks import recommend


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

            artists = []
            for value in form.data.items():
                if (value[1] is not ''):
                    artists.append(value[1])

            #insertData(searchType, artist1, artist2, artist3, artist4, artist5)
            results = recommend(table, *artists).values.tolist()
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


@app.route('/small/small_results', methods=['GET', 'POST'])
def smallResults():
    smallForm = ArtistsForm()
    error = None
    try:
        if request.method == 'POST' and smallForm.validate():
            table = 'artistsSmall'
            searchType = 'small'

            artists = []
            for value in smallForm.data.items():
                if (value[1] is not ''):
                    artists.append(value[1])

            smallResults = recommend(table, *artists).delay().values.tolist()
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


@app.route('/festivals')
def festivals():
    festForm = FestivalForm()
    artistsForm = ArtistsForm()
    return render_template('festival.html', festForm=festForm,
                           artistsForm=artistsForm)


@app.route('/festivals/results', methods=['GET', 'POST'])
def festivalsResults():
        festForm = FestivalForm()
        error = None
        try:
            if request.method == 'POST':

                table = festForm.selectFest.data
                print(table)

                artists = []
                for value in festForm.data.items():
                    if (value[1] is not ''):
                        if value[1] is not table:
                            artists.append(value[1])
                            print(value[1])

                festResults = recommend(table, *artists).values.tolist()

                if table == 'govball':
                    festival = "Governor's Ball"
                else:
                    festival = table

                return render_template('festivalResults.html',
                                       festResults=festResults,
                                       festival=festival)
            else:
                error = "Please be sure to enter 5 artists with correct" \
                        " spelling and punctuation"

        except pylast.WSError:
            return render_template('error.html')
        return render_template('festival.html', festForm=festForm, error=error)


@app.route('/how_it_works')
def how():
    return render_template('how.html')
