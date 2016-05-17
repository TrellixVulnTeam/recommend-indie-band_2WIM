import os
import redis
from rq import Worker, Queue, Connection

listen = ['high', 'default', 'low']

redis_url = os.getenv('REDISTOGO_URL',
                      'redis://redistogo:61f64edfbf63e3009926b41556e83aee@catfish.redistogo.com:10342/')
if not redis_url:
    raise RuntimeError('Set up Redis to go first.')

conn = redis.from_url(redis_url)

if __name__=='__main__':
    with Connection(conn):
        worker = Worker(map(Queue, listen))
        worker.work()
