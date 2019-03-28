#!/bin/bash
# Clone Repo and chmod the setupsn.sh
# Run this script from same git clone location

SN=$(whiptail --inputbox "SN Number - Folder directory to be created for SN" 10 30 3>&1 1>&2 2>&3)
Wallet=$(whiptail --inputbox "Mainnet Wallet Address - Enter Wallet address for staking - Ctrl-Shift-V or Shift + Insert to paste from clipboard" 10 30 3>&1 1>&2 2>&3)
SN_PORT=$(whiptail --inputbox "SN Port - Port to be used for SN" 10 30 3>&1 1>&2 2>&3)
DATA_DIR=$(whiptail --inputbox "Data Directory - Data Directory to be used (/home/User/SN Number/)" 10 30 3>&1 1>&2 2>&3)
RPC_PORT=$(whiptail --inputbox "RPC port for Graftnoded - Mainnet Defailt = 18981 | Public Testnet Default = 28881" 10 30 3>&1 1>&2 2>&3)
P2P_PORT=$(whiptail --inputbox "P2P port for Graftnoded - Mainnet Default = 18980 | Public Testnet Default = 28880" 10 30 3>&1 1>&2 2>&3)

echo "SN Number - $SN"
echo "Mainnet Wallet Address - $Wallet"
echo "SN Port - Port to be used for SN = $SN_PORT"
echo "Data Directory - $DATA_DIR"
echo "RPC port for Graftnoded - $RPC_PORT"
echo "P2P port for Graftnoded - $P2P_PORT"
echo "Above values represent the values inserted and used for the setup of your supernode, please cd to "~/$SN""

function SetupSN()
{
mkdir -p ~/$SN/logs &&
cp ./config.ini ~/$SN/config.ini &&
sed -i "s|data_dir_var|$DATA_DIR|g" ~/$SN/config.ini &&
sed -i "s/wallet_var/$Wallet/g" ~/$SN/config.ini &&
sed -i "s/rpc_port/$RPC_PORT/g" ~/$SN/config.ini &&
sed -i "s/p2p_port/$P2P_PORT/g" ~/$SN/config.ini &&
sed -i "s/port_var/$SN_PORT/g" ~/$SN/config.ini &
}

SetupSN $SN $Wallet $SN_PORT $DATA_DIR $RPC_PORT $P2P_PORT
