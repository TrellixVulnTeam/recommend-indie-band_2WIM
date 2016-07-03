from flask import render_template, request, make_response
import pylast
import datetime

from app import app
from .models import getArtists, dbCon
from .forms import ArtistsForm, FestivalForm


@app.route('/test')
def test():
    return render_template('example.html')


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

            artists = []
            for value in form.data.items():
                if (value[1] is not ''):
                    artists.append(value[1])

            results = getArtists(table, *artists).values.tolist()
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

            artists = []
            for value in smallForm.data.items():
                if (value[1] is not ''):
                    artists.append(value[1])

            smallResults = getArtists(table, *artists).values.tolist()

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

                artists = []
                for value in festForm.data.items():
                    if (value[1] is not ''):
                        if value[1] is not table:
                            artists.append(value[1])

                festResults = getArtists(table, *artists).values.tolist()

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


@app.route('/reviews')
def reviews():
    date = datetime.datetime.now()
    date_str = str(date.year) + '-' + str(date.month) + '-' + str(date.day)
    con = dbCon()
    cur = con.cursor()
    cur.execute('SELECT artist, album, rating, summary, release_date,' \
                'genre1, genre2, genre3 ' \
                'FROM reviews '
                'WHERE (%s) - release_date <= 14 '
                'ORDER BY release_date desc', (date_str,))
    reviews = cur.fetchall()
    cur.close()
    return render_template('reviews.html', reviews=reviews)


@app.route('/reviews/all')
def all_reviews():
    con = dbCon()
    cur = con.cursor()
    cur.execute('SELECT artist, album, rating, summary, release_date,' \
                'genre1, genre2, genre3 FROM reviews ' \
                'order by release_date desc')
    reviews = cur.fetchall()
    cur.close()

    return render_template('all_reviews.html', reviews=reviews)


@app.route('/reviews/<artist>/<album>')
def specific_review(artist, album):
    con = dbCon()
    cur = con.cursor()
    cur.execute("SELECT html_code FROM reviews " \
                "WHERE artist='" + artist + "' AND album='" + album + "'")
    review_html = cur.fetchone()

    cur.execute("SELECT artist, album, rating, writer, release_date FROM reviews " \
                "WHERE artist='" + artist + "' AND album='" + album + "'")
    review_info = cur.fetchall()
    cur.close()

    return render_template('album_review.html', review_html=review_html[0],
                           review_info=review_info[0])


@app.route('/quick_search/<artist>')
def quick_search(artist):
    results = getArtists('artists', artist).values.tolist()
    return render_template('results.html', results=results)


@app.route('/how_it_works')
def how():
    return render_template('how.html')


@app.route('/sitemap.xml')
def sitemap():
    return render_template('sitemap.xml')
