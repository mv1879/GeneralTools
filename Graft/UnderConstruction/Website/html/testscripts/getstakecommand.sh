#!/usr/bin/bash

#pass values in like ./getstakecommand #.#.#.# ##### StakeAmount StakeBlockpPeriod

IP="$1"
PORT="$2"
STAKE_AMOUNT="$3"
STAKE_BLOCK_PERIOD="$4"

WALLET_PUBLIC_ADDRESS=`curl -s http://$IP:$PORT/dapi/v2.0/cryptonode/getwalletaddress | jq '.wallet_public_address' | tr -d '" '`
PUBLIC_ID=`curl -s http://$IP:$PORT/dapi/v2.0/cryptonode/getwalletaddress | jq '.id_key' | tr -d '" '`
SN_SIGNATURE=`curl -s http://$IP:$PORT/dapi/v2.0/cryptonode/getwalletaddress | jq '.signature' | tr -d '" '`

echo "stake_transfer $WALLET_PUBLIC_ADDRESS $STAKE_AMOUNT $STAKE_BLOCK_PERIOD $PUBLIC_ID $SN_SIGNATURE"
echo "stake_transfer $WALLET_PUBLIC_ADDRESS $STAKE_AMOUNT $STAKE_BLOCK_PERIOD $PUBLIC_ID $SN_SIGNATURE" > /var/www/sensiblebizsolutions.com/html/stakecommand.txt
