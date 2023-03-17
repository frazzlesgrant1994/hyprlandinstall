#!/bin/bash

## Hyprland installer ##
# Author: Frazer Grant
# Version 0.1


### Veriables 

workdir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
uname=$(whoami)


### Functions #####
#
#
#
#


#####################################
#  Creates a pause function #####
pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

######################################

## Welcome message and disclaimer, Just displays info 

welcomemsg(){
clear
echo "###############################################################"
echo "#       Welcome to Hyprland Installer, Pre Themed             #"
echo "#                                                             #"
echo "# Version: 0.1                                                #"
echo "# Author: Frazer Grant                                        #"
echo "# Github: https://github.com/frazzlesgrant1994                #"
echo "#                                                             #"
echo "# Theme used: https://github.com/1amSimp1e/dots               #"
echo "###############################################################"
}

disclaimer(){
    echo ""
    read -r -p "Hyprland Installer comes with NO warranties, I am NOT responsible if you break your linux system. 
Would you like to continue with the installer?  [Y/n]" response
response=${response,,} # tolower
  if [[ $response =~ ^((yes|y| )) ]] || [[ -z $response ]]; then
    echo""
    clear 
    welcomemsg
  else 
exit 1
  fi
}

#######################################


## Check to make sure the scripts isnt being run as Root or sudo

checkroot(){
if [[ $EUID -ne 0 ]]; then
   echo "" 
   else
   echo "Please don't run as Root. the script will ask for sudo password when needed."
   exit 1
fi
}

#######################################


## checks to see if the system is Arch, Debian or RHEL\Fedora based 

checksystem(){
if command -v pacman > /dev/null
then
    system="Arch-based"    
fi

if command -v apt > /dev/null
then
    system="Debian-based"
fi
if command -v dnf > /dev/null
then
    system="Fedora"
fi
}

########################################

## Installs yay AUR helper if required (Arched based only)
yayinstall (){

    cd /opt
	sudo git clone https://aur.archlinux.org/yay-git.git
	clear
	sudo chown -R $uname:$uname ./yay-git
	cd yay-git
	makepkg -si
	cd $workdir/
}

## yay checker 

yaycheck(){
if command -v yay > /dev/null
then
 echo "Yay is already installed"
 else 
   yayinstall   
fi

}

########################################


## Installes the required packages for Arch based systems 

pacmaninstall(){
if [ $system = "Arch-based" ]; then 
    echo ""
    echo "We have Detected an Arch-based system, we will now install all the required packages"
    sleep 1
    echo ""
    yaycheck
    sleep 1
    yay -S - < archpkglist.txt
    echo ""
    
fi
}

#########################################


## Installes the required packages for Debian based systems 
aptinstall(){
if [ $system = "Debian-based" ]; then 
    echo "We have Detected a Debianed(0) based system, this script currently wont work on this system."
    echo ""
    pause
    exit 0
fi
}

#########################################

## Installes the required packages for RHEL\Fedora based systems 

dnfinstall(){
if [ $system = "Fedora" ]; then 
    echo ""
    echo "We have Detected a Fedora\RHEL based system, this script currently wont work on this system."
    echo ""
    pause
    exit 0
fi
}


##########################################

## copys config files to home dir 
copyfiles(){
mv assets/fonts ~/.fonts
cp -r assets/* ~/.config/
fc-cache -fv
}



#########################################


## Running the functions
checkroot
welcomemsg
disclaimer
checksystem
aptinstall
pacmaninstall
dnfinstall
copyfiles
pause