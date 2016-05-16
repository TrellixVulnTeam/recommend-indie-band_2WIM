from flask import Flask
from flask_bootstrap import Bootstrap
from celery import Celery


app = Flask(__name__)
app.config.from_object('config')
Bootstrap(app)
Celery(app)

from app import views
