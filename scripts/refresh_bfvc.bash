#!/bin/bash
# Lives in /etc/cron.daily/

cd /home/ubuntu/BFVC/
if [[ $(git pull) = *"up-to-date"* ]]; then
    echo "No code changes, update complete"
else
    echo "Code based changed!..."
    cd ..
    rm -r /var/www/html/*
    cp -r BFVC/Ion/_site/* /var/www/html/
fi
