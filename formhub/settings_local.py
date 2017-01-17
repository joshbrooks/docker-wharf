import os
import subprocess
import sys
from pymongo import MongoClient
from settings_except_mongo import *

DEBUG=True

SECRET_KEY="khadfgbfbadvlkasdlkadlfkadkalkbdfg"

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.environ.get('POSTGRES_USER'),
        'USER': os.environ.get('POSTGRES_DB'),
        'HOST': os.environ.get('POSTGRES_HOST', 'localhost'),
        'PORT': '5432'
    }
}

MONGO_DATABASE = {
    'HOST': os.environ.get('MONGO_HOST', 'localhost'),
    'PORT': 27017,
    'NAME': 'formhub',
    'USER': '',
    'PASSWORD': ''
}

if MONGO_DATABASE.get('USER') and MONGO_DATABASE.get('PASSWORD'):
    MONGO_CONNECTION_URL = (
        "mongodb://%(USER)s:%(PASSWORD)s@%(HOST)s:%(PORT)s") % MONGO_DATABASE
else:
    MONGO_CONNECTION_URL = "mongodb://%(HOST)s:%(PORT)s" % MONGO_DATABASE

MONGO_CONNECTION = MongoClient(
    MONGO_CONNECTION_URL, safe=True, j=True, tz_aware=True)
MONGO_DB = MONGO_CONNECTION[MONGO_DATABASE['NAME']]

print DATABASES
print MONGO_DATABASE
