#!/bin/bash
# K7ILO's PlayNews development remix download and install script V.1

# Global Parameters -------------------------------------------
VERSION=$(sed 's/\..*//' /etc/debian_version)

DEP="git lame sox libsox-fmt-all bc"

# Let's begin -------------------------------------------------
echo "--------------------------------------------------------------------------------"
echo " OK!! I DO NOT PROMISE THIS WORKS SO CONTINUING ANY OF THIS IS AT YOUR OWN RISK "
echo " You have 5 secondes to decide if you want to terminate this installation.      "
echo "--------------------------------------------------------------------------------"
sleep 5

echo ""
echo "----------------"
echo " Ok! Here we go "
echo "----------------"

echo ""
echo "--------------------------------------"
echo " Installing the required dependencies "
echo "--------------------------------------"
sleep 2

apt update && apt install -y $DEP
sleep 3

echo
echo "--------------------------------"
echo " All dependencies are installed "
echo "--------------------------------"
sleep 2

echo "---------------------------------------------------"
echo " Now let's download and install PlayNews           "
echo "---------------------------------------------------"
sleep 5

cd /opt
git clone https://github.com/k7ilo/PlayNews.git
chmod +x /opt/PlayNews/playnews

clear
echo "-----------------------------------------------"
echo "             PlayNews Installed                "
echo "        Please read the README file            "
echo "-----------------------------------------------"

