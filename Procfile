web: gunicorn app:app
worker: celery -A app.tasks --loglevel=info
