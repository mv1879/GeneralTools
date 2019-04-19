sudo apt update

PKGS="graft-blockchain-tools graftnoded graft-wallet graft-supernode"

function InstallUbuntu18_04
{
        echo "Distro chosen: $choice" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl gnupg2 -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community bionic main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt update && sudo apt install $PKGS -y &&
        echo "Successfully installed $PKGS"
}

function InstallDebian9Stretch
{
        echo "Installing Deb Packages for Distro: $choice" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl apt-transport-https gnupg2 -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community stretch main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt update && sudo apt install $PKGS -y &&
        echo "Successfully installed $PKGS"
}

function InstallDebiantesting
{
        echo "Installing Deb Packages for Distro: $choice" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl gnupg2 -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community sid main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt update && sudo apt install $PKGS -y &&
        echo "Successfully installed $PKGS"
}

function InstallInstallUbuntu16_04
{
        echo "Distro chosen: $choice" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl apt-transport-https gnupg2 -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community xenial main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt update && sudo apt install $PKGS -y &&
        echo "Successfully installed $PKGS"
}

function InstallUbuntu18_10
{
        echo "Distro chosen: $choice" &&
        sudo apt update && sudo apt upgrade -y && sudo apt install curl apt-transport-https gnupg2 -y &&
        curl -s https://deb.graft.community/public.gpg | sudo apt-key add - &&
        echo "deb [arch=amd64] https://deb.graft.community cosmic main" | sudo tee /etc/apt/sources.list.d/graft.community.list &&
        sudo apt update && sudo apt install $PKGS -y &&
        echo "Successfully installed $PKGS"
}

# Commented out due to changes in script where version is detected automatically, below presents GUI giving choice of OS's
#choice=$(whiptail --menu --separate-output "Choose an option" 25 78 16 \
#"<-- Back" "Return to the main menu." \
#"1" "Ubuntu 18.04." \
#"2" "Debian 9 Stretch." \
#"3" "Debian testing/unstable." \
#"4" "Ubuntu 16.04 (xenial)." \
#"5" "Ubuntu 18.10 (cosmic)." 3>&1 1>&2 2>&3)

choice=`lsb_release -ds 2>/dev/null || cat /etc/*release 2>/dev/null | head -n1 || uname -om`

if [ "$choice" == "Ubuntu 18.04.2 LTS" ]; 
then
InstallUbuntu18_04
fi

if [ "$choice" == "Debian GNU/Linux 9.8 (stretch)" ]; 
then
InstallDebian9Stretch
fi

if [ "$choice" == "Debian GNU/Linux buster/sid" ]; 
then
InstallDebiantesting
fi

if [ "$choice" == "4" ]; 
then
InstallUbuntu16_04
fi

if [ "$choice" == "5" ]; 
then
InstallUbuntu18_10
fi