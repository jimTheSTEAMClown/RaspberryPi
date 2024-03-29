#! /bin/sh
# ============================================================================
# shell script to restore a Raspberry Pi after a clean NOOBS install
# Source: STEAM Clown - www.steamclown.org 
# GitHub: https://github.com/jimTheSTEAMClown/RaspberryPi
# Hacker: Jim Burnham - STEAM Clown, Engineer, Maker, Propmaster & Adrenologist 
# This example code is licensed under the CC BY-NC-SA 4.0, GNU GPL and EUPL
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://eupl.eu/
# Program/Design Name:		RPiUpdate.sh
# Description:    shell script to restore a Raspberry Pi after a clean NOOBS install 
# Dependencies:   
# Revision: 
#  Revision 0.02 - Updated 03/26/2019 for SVCTE Mechatronics Class
#  Revision 0.01 - Created 03/26/2019
# Additional Comments: 
# see https://www.answers.com/Q/How_do_you_make_a_yes_no_command_in_cmd to add more features
# ============================================================================

echo "  _  _  ___  ___   __  ____  __  _  _  __ "
echo " ( )( )(  ,\(   \ (  )(_  _)(  )( \( )/ _) "
echo "  )()(  ) _/ ) ) )/__\  )(   )(  )  (( (/\ "
echo "  \__/ (_)  (___/(_)(_)(__) (__)(_)\_)\__/ "
pwd
ls -l

echo "----------------------------------------------------"
echo "Running Update"
echo "----------------------------------------------------"
echo " "
sudo apt-get update -y
echo " "
echo "----------------------------------------------------"
echo "Done running update"
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Running Upgrade with -y"
echo "----------------------------------------------------"
echo " "
sudo apt-get upgrade -y
echo " "
echo "----------------------------------------------------"
echo "Done running Upgrade"
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Installing Scrot"
echo "----------------------------------------------------"
echo " "
sudo apt-get install scrot
echo " "
echo "----------------------------------------------------"
echo "Done installing Scrot"
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Installing ImageMagick"
echo "----------------------------------------------------"
echo " "
sudo apt-get install imagemagick -y
echo "----------------------------------------------------"
echo " "
echo "Done installing ImageMagick"
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Setting HDMI Audio to the Jack"
echo "----------------------------------------------------"
echo " "
sudo amixer cset numid=3 1
echo " "
echo "----------------------------------------------------"
echo "Done settign Jack"
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Installing Apache"
echo "----------------------------------------------------"
echo " "
sudo apt-get install apache2 -y
echo " "
echo "----------------------------------------------------"
echo "Done installing Apache"
echo "----------------------------------------------------"
echo " "


echo "----------------------------------------------------"
echo "Installing Arduino"
echo "----------------------------------------------------"
echo " "
sudo apt-get install arduino -y
echo " "
echo "----------------------------------------------------"
echo "Done installing Arduino"
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Installing PyTumblr"
echo "----------------------------------------------------"
echo " "
sudo pip install pytumblr
echo " "
echo "----------------------------------------------------"
echo "Done installing PyTumblr"
echo "----------------------------------------------------"
echo " "

# may be OBSOLITE
#echo "----------------------------------------------------"
#echo "Installing PHP5"
#echo "----------------------------------------------------"
#sudo apt-get install libapache2-mod-php5 php5 -y
#echo "----------------------------------------------------"
#echo "Done installing PHP5"
#echo "----------------------------------------------------"
#echo " "

#echo "----------------------------------------------------"
#echo "Installing Pure FTP Server"
#echo "----------------------------------------------------"
#echo "got this information from"
#echo "https://www.raspberrypi.org/documentation/remote-access/ftp.md"
#echo "----------------------------------------------------"          
#sudo udo apt-get install pure-ftpd - y
#sudo groupadd ftpclowns
#sudo useradd ftpclown -g ftpclowns -s /sbin/nologin -d /dev/null
#sudo mkdir /home/pi/FTP
#sudo chown -R ftpclown:ftpclowns /home/pi/FTP
#echo "Please enter a password for FTP User ftpclown"
#sudo pure-pw useradd upload -u ftpclown -g ftpclowns -d /home/pi/FTP -m
#sudo pure-pw mkdb
#sudo ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/60puredb
#sudo service pure-ftpd restart
#echo "----------------------------------------------------"
#echo "Done installing Pure FTP Server"
#echo "----------------------------------------------------"
#echo " "


#echo "----------------------------------------------------"
echo "All Done"
#echo "----------------------------------------------------"
#echo "  ___    __  _  _  ___  "
#echo " (   \  /  \( \( )(  _) "
#echo "  ) ) )( () ))  (  ) _) "
#echo " (___/  \__/(_)\_)(___) "

#mp3File = 'wget https://cdn.instructables.com/ORIG/F1H/6Q8Z/J4YFREIR/F1H6Q8ZJ4YFREIR.mp3'
#os.system(mp3File)
