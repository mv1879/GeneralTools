#!/bin/bash
# Clone Repo and chmod the setupsn.sh
# Run this script from same git clone location

function SetupSN()
{
mkdir -p ~/$1/logs &&
cp ./config.ini ~/$1/config.ini &&
sed -i "s|data_dir_var|$4|g" ~/$1/config.ini &&
sed -i "s/wallet_var/$2/g" ~/$1/config.ini &&
sed -i "s/port_var/$3/g" ~/$1/config.ini &
}

SetupSN $1 $2 $3 $4

## Format like:
## Ensure you align the two occurrences of sn2 in below and edit user in path to user that you are dunning under:
## ./setupsn.sh sn2 G9MqJC2JFKs7iozHQWj2vJDKqZtFyNvnXTp4iohwu1x96nzQXwgCqQug42pexiPABgDJA5WBDiZ2o8qxu61Xhf7TCdfFm3u 18791 "/home/graft/sn2/"
