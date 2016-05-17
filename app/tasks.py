from celery import Celery
from app import app
import config
from .models import getArtists

app = Celery(app, broker=config.BROKER_URL)
app.conf.update(BROKER_URL=config.BROKER_URL)


@app.task()
def recommend(table, *artists):
    return getArtists(table, *artists)
