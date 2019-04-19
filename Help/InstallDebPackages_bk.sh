sudo apt update

function InstallUbuntu18_04
{
        echo "Distro chosen: Ubuntu 18.04" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community bionic main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt install graftnoded graft-wallet-cli graft-supernode graft-blockchain-tools -y &
}

function InstallDebian9Stretch
{
        echo "Distro chosen: Debian 9 Stretch" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl apt-transport-https -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community stretch main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt install graftnoded graft-wallet-cli graft-supernode graft-blockchain-tools -y &
}

function InstallDebiantesting
{
        echo "Distro chosen: Debian testing/unstable" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community sid main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt install graftnoded graft-wallet-cli graft-supernode graft-blockchain-tools -y &
}

function InstallInstallUbuntu16_04
{
        echo "Distro chosen: Ubuntu 16.04 (xenial)" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl apt-transport-https -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community xenial main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt install graftnoded graft-wallet-cli graft-supernode graft-blockchain-tools -y &
}

function InstallUbuntu18_10
{
        echo "Distro chosen: Ubuntu 18.10 (cosmic)" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl apt-transport-https -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community cosmic main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt install graftnoded graft-wallet-cli graft-supernode graft-blockchain-tools -y &
}

choice=$(whiptail --menu --separate-output "Choose an option" 25 78 16 \
"<-- Back" "Return to the main menu." \
"1" "Ubuntu 18.04." \
"2" "Debian 9 Stretch." \
"3" "Debian testing/unstable." \
"4" "Ubuntu 16.04 (xenial)." \
"5" "Ubuntu 18.10 (cosmic)." 3>&1 1>&2 2>&3)

echo "first echo: $choice"

if [ $choice == 1 ]; 
then
InstallUbuntu18_04
fi

if [ $choice == 2 ]; 
then
InstallDebian9Stretch
fi

if [ $choice == 3 ]; 
then
InstallDebiantesting
fi

if [ $choice == 4 ]; 
then
InstallUbuntu16_04
fi

if [ $choice == 5 ]; 
then
InstallUbuntu18_10
fi
