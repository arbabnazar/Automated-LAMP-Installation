#!/bin/bash

#Instructions to use this script 
#
#chmod +x SCRIPTNAME.sh
#
#sudo ./SCRIPTNAME.sh


echo "###################################################################################"
echo "Please be Patient: Removal will start now....... It may take some time :)"
echo "###################################################################################"



#Update the repositories

sudo apt-get update


#Apache, Php, MySQL and required packages installation

sudo apt-get -y install purge apache2 php7.0 libapache2-mod-php7.0 php7.0-mcrypt php5-cur7.0 php7.0-mysql php7.0-gd php7.0-cli php7.0-dev mysql-client
php5enmod mcrypt

sudo apt-get -y install purge mysql-server

#Restart all the installed services to verify that everything is installed properly


echo -e "\n"


if [ $? -ne 0 ]; then
   echo "Please check the removal of services, There was a $(tput bold)$(tput setaf 1)Problem$(tput sgr0)"
else
   echo "Removal of services run $(tput bold)$(tput setaf 2)Sucessfully$(tput sgr0)"
fi

echo -e "\n"
