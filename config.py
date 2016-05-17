import pylast
import os
import redis


WTF_CSRF_ENABLED = True
SECRET_KEY = 'skldjfsaASDFlkjds290398sdnvkjd2'

dbname = 'd2m84f7bec17sh'
user = 'hlakkzlawtveie'
host = 'ec2-54-197-230-161.compute-1.amazonaws.com'
password = 'BH4t1gKK7hcCeyE8pG8_tnV9S0'

API_KEY = "bd7e293a51b53716d502db4d74835f01"
API_SECRET = "b11413d5d68dad40029e06d1d33f753f"
username = "dschuler36"
password_hash = pylast.md5("s002443")

redis_url = os.getenv('REDIS_URL', 'redis://h:p7fb6tbeko7o499k2ric5bpq9lf@ec2-54-227-250-222.compute-1.amazonaws.com:9809')
redis_port = 9809
redis_pass = 'p7fb6tbeko7o499k2ric5bpq9lf'
