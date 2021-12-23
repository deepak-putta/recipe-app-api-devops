#!/bin/sh

set -e

python manage.py collectstatic --noinput
python manage.py wait_for_db
python manage.py migrate

uwsgi --socket :9000 --workers 4 --master --enable-threads --module app.wsgi

# run uWSGI as a TCP socket on port 9000
# run this as master service on the terminal
# module is the actual application that uWSGI is gonna run