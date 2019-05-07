#!/usr/bin/bash

# Started testing reading from a textfile rather than downloading the list on each call.
# Times were as follows, calls to 1 SN, 2-3 second completion time at best and to both SN's 4-5 seconds.
# Reading from textfile = 0.0185 seconds consistently.
# Just performed basic testing, change file directory in below: supernodeResult & blockchainheight to correct directory. Functions etc will be added.

#supernodeResult=$(curl -s --raw http://51.79.43.168:18690/debug/supernode_list/0 | jq '.result' | jq '.items' | jq '.[] | select(.PublicId=="8e3f26cbec8aa0df2a55373aa4247fff53042ba0faae788855fb524780fce1e2")')
supernodeResult=$(cat /tmp/return.txt | jq '.result' | jq '.items' | jq '.[] | select(.PublicId=="8e3f26cbec8aa0df2a55373aa4247fff53042ba0faae788855fb524780fce1e2")')
#blockchainheight=$(curl -s --raw http://51.79.43.168:18690/debug/supernode_list/0 | jq '.result' | jq '.height')
blockchainheight=$(cat /tmp/return.txt | jq '.result' | jq '.height')
#supernodeResult2=`curl -s --raw http://45.32.198.209:28690/debug/supernode_list/0 | jq '.result' | jq '.items' | jq '.[] | select(.PublicId=="8e3f26cbec8aa0df2a55373aa4247fff53042ba0faae788855fb524780fce1e2")'`
#blockchainheight2=`curl -s --raw http://http://45.32.198.209:28690/debug/supernode_list/0 | jq '.result' | jq '.height'`

LAST_UPDATE_AGE=`echo "$supernodeResult" | jq '.LastUpdateAge'`
BLOCKS_TILL_EXPIRY=`echo "$supernodeResult" | jq '.StakeExpiringBlock'-"$blockchainheight"`
#STAKE_FIRST_VALID_BLOCK=`echo $supernodeResult | jq '.StakeFirstValidBlock'`
#BLOCKS_TILL_EXPIRY=`echo "$STAKE_EXPIRING_BLOCK" | awk '{ printf $1 - $blockchainheight }'`
IS_STAKE_VALID=`echo "$supernodeResult" | jq '.IsStakeValid'`
STAKE_AMOUNT=`echo "$supernodeResult" | jq '.StakeAmount'/10000000000`
#DAYS_TO_STAKE_EXPIRE=`echo "scale=3; $(($BLOCKS_TILL_EXPIRY * 2 / 24 / 60))" | bc`
HOURS_TO_STAKE_EXPIRE=`echo "$BLOCKS_TILL_EXPIRY" | awk '{ printf ("%.0f", $1 * 2 / 60) }'`
EXACT_EXPIRE=`date -d "+$HOURS_TO_STAKE_EXPIRE hours"`

echo "LAST_UPDATE_AGE: $LAST_UPDATE_AGE"

echo "Blocks Till expiry: $BLOCKS_TILL_EXPIRY & Hours till expire: $HOURS_TO_STAKE_EXPIRE"

echo "IS_STAKE_VALID: $IS_STAKE_VALID"

echo "STAKE_AMOUNT: $STAKE_AMOUNT"

echo "EXACT_EXPIRE: $EXACT_EXPIRE"

#echo "supernodeResult2: $supernodeResult2"

#echo "blockchainheight2: $blockchainheight2"
