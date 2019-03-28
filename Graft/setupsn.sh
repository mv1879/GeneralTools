#!/bin/bash
# Clone Repo and chmod the setupsn.sh
# Run this script from same git clone location

SN_NAME=$(whiptail --inputbox "SN Number - Folder directory to be created for SN - exclude numbering - script will detect next SN number in directory" 10 30 3>&1 1>&2 2>&3)
Wallet=$(whiptail --inputbox "Mainnet Wallet Address - Enter Wallet address for staking - Ctrl-Shift-V or Shift + Insert to paste from clipboard" 10 30 3>&1 1>&2 2>&3)
SN_PORT=$(whiptail --inputbox "SN Port - Port to be used for SN - must be unique per SN" 10 30 3>&1 1>&2 2>&3)
RPC_PORT=$(whiptail --inputbox "RPC port for Graftnoded - Mainnet Defailt = 18981 | Public Testnet Default = 28881" 10 30 3>&1 1>&2 2>&3)
P2P_PORT=$(whiptail --inputbox "P2P port for Graftnoded - Mainnet Default = 18980 | Public Testnet Default = 28880" 10 30 3>&1 1>&2 2>&3)
USER=$(whoami)
CURRENT_DIR=`pwd`

function SetupSN()
{
cd /home/$USER/
n=0
for i in $(ls) ; do
let n=$n+1
done
let n=$n+1
SN="$SN_NAME$n"
mkdir "$SN_NAME$n" &&
cp $CURRENT_DIR/config.ini ~/"$SN"/config.ini &&
sed -i "s|data_dir_var|/home/$USER/$SN/|g" ~/"$SN"/config.ini &&
sed -i "s/wallet_var/$Wallet/g" ~/"$SN"/config.ini &&
sed -i "s/rpc_port/$RPC_PORT/g" ~/"$SN"/config.ini &&
sed -i "s/p2p_port/$P2P_PORT/g" ~/"$SN"/config.ini &&
sed -i "s/port_var/$SN_PORT/g" ~/"$SN"/config.ini &
}

SetupSN $SN $Wallet $SN_PORT $DATA_DIR $RPC_PORT $P2P_PORT $USER

echo "SN Number - $SN"
echo "Mainnet Wallet Address - $Wallet"
echo "Data Directory - $DATA_DIR"
echo "RPC port for Graftnoded - $RPC_PORT"
echo "P2P port for Graftnoded - $P2P_PORT"
echo "Above values represent the values inserted and used for the setup of your supernode, please cd to "~/$SN""
echo "Script and config.ini location - $CURRENT_DIR"

