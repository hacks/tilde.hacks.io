#!/bin/bash

# cd into admin
cd /home/admin/

# Make sure test
if [ ! -d ./www-test ]; then
  echo "Creating www-test"
  ln -s ./public-html ./www-test
fi


# Make updated files
./recentUpdateJson.pl --since-hours=600000

# Move update files
mv tilde.600000h.json www-src/_data.json

# Compile to staging
harp compile www-src www-test


