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
echo "Do you wish WGET the Raspberry Pi 64-Bit SH Files?"
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
echo "Skipping this install"
else
echo "Skipping this install"
fi
