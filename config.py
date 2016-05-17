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

redis_url = os.getenv('REDIS_URL', 'redis://redistogo:61f64edfbf63e3009926b41556e83aee@catfish.redistogo.com:10342/')
redis_port = 10342
redis_pass = '61f64edfbf63e3009926b41556e83aee'
