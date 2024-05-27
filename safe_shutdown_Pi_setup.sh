#! /bin/sh

# ============================================================================
# shell script to restore an Ubuntu Linux Class Image after a clean Ubuntu install
# Source: STEAM Clown - www.steamclown.org 
# GitHub: https://github.com/jimTheSTEAMClown/Linux
# Hacker: Jim Burnham - STEAM Clown, Engineer, Maker, Propmaster & Adrenologist 
# This example code is licensed under the CC BY-NC-SA 4.0, GNU GPL and EUPL
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://eupl.eu/
# Program/Design Name:		New_64-Bit_Pi_Build_WGETsh
# Description:    shell script to WGET the files to setup and update a clean Raspberry Pi Image 
# Dependencies:   
# Revision: 
#  
#  Revision 0.02 - Updated 02/21/2024 for SVCTE Mechatronics Class
#  Revision 0.01 - Created 02/21/2024
# Additional Comments: 
# see https://www.answers.com/Q/How_do_you_make_a_yes_no_command_in_cmd to add more features
# ============================================================================
# Make sure there is a "PiImageBuild" Directory
# sudo mkdir PiImageBuild 
# ============================================================================
# ============================================================================
# Make sure there is a "viam" Directory
# sudo mkdir viam 
# ============================================================================
#
# ============================================================================
# Copy These Line on the command line
# ============================================================================
# sudo wget -O ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh https://raw.githubusercontent.com/jimTheSTEAMClown/RaspberryPi/master/New_64-Bit_Pi_Build_WGET.sh
# sudo chmod 755 ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh
# sudo cat ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh

# ============================================================================
echo "    _   _   _     _   _     _   _   _     _   _     "
echo "   / \ / \ / \   / \ / \   / \ / \ / \   / \ / \    "
echo "  ( N | e | w ) ( 6 | 4 ) ( B | i | t ) ( P | i )   "
echo "   \_/ \_/ \_/   \_/ \_/   \_/ \_/ \_/   \_/ \_/    "
echo "    _   _   _   _     _   _     _   _   _   _   _   "
echo "   / \ / \ / \ / \   / \ / \   / \ / \ / \ / \ / \  "
echo "  ( W | G | E | T ) ( S | H ) ( F | I | L | E | S ) "
echo "   \_/ \_/ \_/ \_/   \_/ \_/   \_/ \_/ \_/ \_/ \_/  "

echo "----------------------------------------------------"
echo "New, Clean 64 Bit Raspberry Pi Image WGET SH Files" 
echo "----------------------------------------------------"
echo " "
pwd
# ls -l
ls
echo " "
echo "----------------------------------------------------"
echo "Do you wish to run the WGET the Raspberry Pi 64-Bit SH Files?"
echo "----------------------------------------------------"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
            echo "----------------------------------------------------"
            echo "Getting Raspberry Pi WGET New Image Shell Script Files" 
            echo "----------------------------------------------------"
            break;;
        No ) 
            echo "----------------------------------------------------"
            echo "Exiting Without Doing Anything" 
            echo "----------------------------------------------------"
            exit;;
    esac
done

# ============================================================================
echo " "
echo "  _  _  ___  ___   __  ____  __  _  _  __ "
echo " ( )( )(  ,\(   \ (  )(_  _)(  )( \( )/ _) "
echo "  )()(  ) _/ ) ) )/__\  )(   )(  )  (( (/\ "
echo "  \__/ (_)  (___/(_)(_)(__) (__)(_)\_)\__/ "
echo "----------------------------------------------------"
echo "Ready... I'm going to run "
echo "  Going to run $ sudo apt update"
echo "  Going to run $ sudo apt upgrade with -y" 
echo "----------------------------------------------------"
echo "Do you wish to run UPDATE and UPGRADE?  Enter y/Y or n/N or any Key?"
read -p "update and upgrade?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "getting home with cd ~"
echo "----------------------------------------------------"
echo " "
cd ~
pwd
echo "----------------------------------------------------"
echo "Running $ update"
echo "----------------------------------------------------"
echo " "
sudo apt update
echo " "
echo "----------------------------------------------------"
echo "Done running Update"
echo "----------------------------------------------------"
echo "----------------------------------------------------"
echo "Running $ upgrade with -y"
echo "----------------------------------------------------"
echo " "
sudo apt upgrade -y
echo " "
echo "----------------------------------------------------"
echo "Done running Upgrade"
echo "----------------------------------------------------"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping Update & Upgrade"
else
echo "Skipping Update & Upgrade"
fi

echo " "
echo "   ___  _____  ____  _  _  ____  _  _   ___    ___  _   _    "
echo "  / __)(  _  )(  _ \( \/ )(_  _)( \( ) / __)  / __)( )_( )   "
echo " ( (__  )(_)(  )___/ \  /  _)(_  )  ( ( (_-.  \__ \ ) _ (    "
echo "  \___)(_____)(__)   (__) (____)(_)\_) \___/  (___/(_) (_)   "
echo "  ___   ___  ____  ____  ____  ____  ___              "
echo " / __) / __)(  _ \(_  _)(  _ \(_  _)/ __)             "
echo " \__ \( (__  )   / _)(_  )___/  )(  \__ \             "
echo " (___/ \___)(_)\_)(____)(__)   (__) (___/             "
echo " "
# ============================================================================
echo "Now I'm going to Copy Some Shell Script User For Updates and Installs Of Stuff"
echo " "
echo "Do you wish to install these? Dude, just say 'Yes' Trust me."
echo "Enter y/Y or n/N or any Key?"
read -p "WGET These Shell Scripts?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "Copying Shell Scripts"
# Add Scripts Here
echo "-------------------------------------------------------"
echo " Wget rpi_set_preferences.sh "
sudo wget -O ./PiImageBuild/rpi_set_preferences.sh https://raw.githubusercontent.com/jimTheSTEAMClown/RaspberryPi/master/rpi_set_preferences.sh
sudo chmod 755 ./PiImageBuild/rpi_set_preferences.sh
sudo cat ./PiImageBuild/rpi_set_preferences.sh
# bash ./PiImageBuild/rpi_set_preferences.sh
echo " "
echo "-------------------------------------------------------"
echo " Wget viam-new-setup.sh "
sudo wget -O ./viam/viam-new-setup.sh https://raw.githubusercontent.com/jimTheSTEAMClown/VIAM-Party-Rover-0/main/viam-new-setup.sh
sudo chmod 755 ./viam/viam-new-setup.sh
sudo cat ./viam/viam-new-setup.sh
# bash ./viam/viam-new-setup.sh
echo " "
echo "-------------------------------------------------------"
echo " Wget start_viam_server.sh "
sudo wget -O ./viam/start_viam_server.sh https://raw.githubusercontent.com/jimTheSTEAMClown/VIAM-Party-Rover-0/main/start_viam_server.sh
sudo chmod 755 ./viam/start_viam_server.sh
sudo cat ./viam/start_viam_server.sh
# bash ./viam/start_viam_server.sh
echo " "
echo "-------------------------------------------------------"
echo "  ___    __  _  _  ___  "
echo " (   \  /  \( \( )(  _) "
echo "  ) ) )( () ))  (  ) _) "
echo " (___/  \__/(_)\_)(___) "
echo " "
echo "----------------------------------------------------"
echo "Done Copying Shell Scripts"
echo "----------------------------------------------------"

elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping WGET Copy Of Shell Scripts"
else
echo "Skipping WGET Copy Of Shell Scripts"
fi
# ============================================================================



# ============================================================================
# The 10 Best Raspberry Pi Apps, Programs, and Software to Install
# https://www.makeuseof.com/tag/top-apps-install-raspberry-pi/
# What's your list of the best software/applications for your Raspberry Pi?
# https://forums.raspberrypi.com/viewtopic.php?t=272664
# Usefull / good programs to have on your Pi
# https://forums.raspberrypi.com/viewtopic.php?t=245808
# What's your list of the best software/applications for your Raspberry Pi?
# https://forums.raspberrypi.com/viewtopic.php?t=272664
# Install Just 7 Apps to Use Your Raspberry Pi Like a Work PC
# https://www.makeuseof.com/apps-to-use-your-raspberry-pi-like-a-work-pc/
# ============================================================================
echo "Now I'm going to install some standard apps that are not part"
echo "of the standard Raspberry Pi Build, but I find you will use them lots..."
echo "I'm installing:"
echo " - Guake"
# echo " - cairo-dock" # < Need to figure out dependancy with Pluseaudio
echo " - VIM"
echo " - arduino"
# echo " - notepad-plus-plus" # < nee to figure out how to install SNAP first
echo " - conky "
echo " - coreutils -y"
echo "----------------------------------------------------"

echo " "
echo "Do you wish to install these? Dude, just say 'Yes' Trust me."
echo "Enter y/Y or n/N or any Key?"
read -p "Install this list of apps?: " yesInstall
# elif statements
if [ $yesInstall == "y" ] || [ $yesInstall == "Y" ]
then
echo "----------------------------------------------------"
echo "Installing GUAKE"
echo "Running $ sudo apt install guake -y"
echo "----------------------------------------------------"
echo " "
sudo apt install guake -y
echo " "
echo "----------------------------------------------------"
# echo "Installing cairo-dock"
# echo "Running $ sudo apt install cairo-dock -y"
echo "----------------------------------------------------"
echo " "
# sudo apt install cairo-dock -y
echo " "
echo "----------------------------------------------------"
echo "----------------------------------------------------"
echo "Installing VIM"
echo "Running $ sudo apt install vim -y"
echo "----------------------------------------------------"
echo " "
sudo apt install vim -y
echo " "
echo "----------------------------------------------------"
echo "Installing Arduino"
echo "Running $ sudo apt install arduino -y"
echo "----------------------------------------------------"
echo " "
sudo apt install arduino -y
echo " "
echo "----------------------------------------------------"
# echo "Installing snap"
# echo "Running $ sudo apt install snap -y"
# echo "----------------------------------------------------"
# echo " "
# sudo apt install snap -y
echo " "
# echo "----------------------------------------------------"
# echo "Installing notepad-plus-plus"
# echo "Running $ sudo snap install notepad-plus-plus"
# echo "----------------------------------------------------"
echo " "
# sudo snap install notepad-plus-plus
echo " "
echo "----------------------------------------------------"
echo "Installing conky"
echo "Running $ sudo apt install conky -y"
echo "----------------------------------------------------"
echo " "
sudo apt install conky -y
echo " "

echo "----------------------------------------------------"
echo "Installing coreutils"
echo "Running $ sudo apt install coreutils -y"
echo "----------------------------------------------------"
echo " "
sudo apt install coreutils -y
echo " "


echo " "
echo "----------------------------------------------------"
echo "Running App To Launch Them"
echo "----------------------------------------------------"
run cairo-dock
echo "----------------------------------------------------"
echo "Done running App installs and updates"
echo "----------------------------------------------------"
echo "Done running STUFF"
echo "----------------------------------------------------"
elif [ $yesInstall == "n" ] || [ $yesInstall == "N" ]
then
echo "Skipping this install"
else
echo "Skipping this install"
fi
# ============================================================================
# sudo apt update
# sudo apt upgrade -y


echo "-------------------------------------------------------"
echo "  ___    __  _  _  ___  "
echo " (   \  /  \( \( )(  _) "
echo "  ) ) )( () ))  (  ) _) "
echo " (___/  \__/(_)\_)(___) "
echo " "
echo "----------------------------------------------------"
echo "Done With Stuff"
echo " "
echo "----------------------------------------------------"
echo "  _  _  ____  _  _  ____    ___  ____  ____  ____  ___ "
echo " ( \( )( ___)( \/ )(_  _)  / __)(_  _)( ___)(  _ \/ __) "
echo "  )  (  )__)  )  (   )(    \__ \  )(   )__)  )___/\__ \ "
echo " (_)\_)(____)(_/\_) (__)   (___/ (__) (____)(__)  (___/ "
echo " "
echo "List the next steps here"
# Stuff To Run at Startup
# run cairo-dock
# conky -b &
#
# ============================================================================
# Make sure there is a "PiImageBuild" Directory
# sudo mkdir PiImageBuild 
# ============================================================================
# sudo wget -O ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh https://raw.githubusercontent.com/jimTheSTEAMClown/RaspberryPi/master/New_64-Bit_Pi_Build_WGET.sh
# sudo chmod 755 ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh
# sudo cat ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh
# bash ./PiImageBuild/New_64-Bit_Pi_Build_WGET.sh
