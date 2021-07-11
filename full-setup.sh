#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
# https://manytools.org/hacker-tools/ascii-banner/
echo """
██╗███╗   ██╗██╗████████╗██╗ █████╗ ██╗     ██╗███████╗███████╗
██║████╗  ██║██║╚══██╔══╝██║██╔══██╗██║     ██║╚══███╔╝██╔════╝
██║██╔██╗ ██║██║   ██║   ██║███████║██║     ██║  ███╔╝ █████╗  
██║██║╚██╗██║██║   ██║   ██║██╔══██║██║     ██║ ███╔╝  ██╔══╝  
██║██║ ╚████║██║   ██║   ██║██║  ██║███████╗██║███████╗███████╗
╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝╚══════╝
"""

apt update && sudo apt upgrade --yes && sudo apt install wget -y

wget -O - https://raw.githubusercontent.com/Questionable-Research-Labs/automated-computer-setup/main/dev-env-setup.sh > /bin/dev-env-setup.sh
chmod +x /bin/dev-env-setup.sh

wget -O - https://raw.githubusercontent.com/Questionable-Research-Labs/automated-computer-setup/main/grub-theme.sh > /bin/grub-theme.sh
chmod +x /bin/grub-theme.sh

wget -O - https://raw.githubusercontent.com/Questionable-Research-Labs/automated-computer-setup/main/ipa-setup.sh > /bin/ipa-setup.sh
chmod +x /bin/ipa-setup.sh

wget -O - https://raw.githubusercontent.com/Questionable-Research-Labs/automated-computer-setup/main/full-update.fish > /bin/full-update.fish
chmod +x /bin/full-update.fish

echo "
██████╗ ███████╗██╗   ██╗    ███████╗███████╗████████╗██╗   ██╗██████╗ 
██╔══██╗██╔════╝██║   ██║    ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗
██║  ██║█████╗  ██║   ██║    ███████╗█████╗     ██║   ██║   ██║██████╔╝
██║  ██║██╔══╝  ╚██╗ ██╔╝    ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝ 
██████╔╝███████╗ ╚████╔╝     ███████║███████╗   ██║   ╚██████╔╝██║     
╚═════╝ ╚══════╝  ╚═══╝      ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝     
"

/bin/dev-env-setup.sh

echo "
███████╗ █████╗ ███╗   ██╗ ██████╗██╗   ██╗     ██████╗ ██████╗ ██╗   ██╗██████╗ 
██╔════╝██╔══██╗████╗  ██║██╔════╝╚██╗ ██╔╝    ██╔════╝ ██╔══██╗██║   ██║██╔══██╗
█████╗  ███████║██╔██╗ ██║██║      ╚████╔╝     ██║  ███╗██████╔╝██║   ██║██████╔╝
██╔══╝  ██╔══██║██║╚██╗██║██║       ╚██╔╝      ██║   ██║██╔══██╗██║   ██║██╔══██╗
██║     ██║  ██║██║ ╚████║╚██████╗   ██║       ╚██████╔╝██║  ██║╚██████╔╝██████╔╝
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝   ╚═╝        ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
"

/bin/grub-theme.sh

echo "
██╗██████╗  █████╗     ███████╗███████╗████████╗██╗   ██╗██████╗ 
██║██╔══██╗██╔══██╗    ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗
██║██████╔╝███████║    ███████╗█████╗     ██║   ██║   ██║██████╔╝
██║██╔═══╝ ██╔══██║    ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝ 
██║██║     ██║  ██║    ███████║███████╗   ██║   ╚██████╔╝██║     
╚═╝╚═╝     ╚═╝  ╚═╝    ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝     
"

/bin/ipa-setup.sh

echo "
███████╗██╗   ██╗██╗     ██╗         ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗
██╔════╝██║   ██║██║     ██║         ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝
█████╗  ██║   ██║██║     ██║         ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  
██╔══╝  ██║   ██║██║     ██║         ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  
██║     ╚██████╔╝███████╗███████╗    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗
╚═╝      ╚═════╝ ╚══════╝╚══════╝     ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝
"

/bin/full-update.fish


echo "
██████╗  ██████╗ ███╗   ██╗███████╗
██╔══██╗██╔═══██╗████╗  ██║██╔════╝
██║  ██║██║   ██║██╔██╗ ██║█████╗  
██║  ██║██║   ██║██║╚██╗██║██╔══╝  
██████╔╝╚██████╔╝██║ ╚████║███████╗
╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚══════╝                           
"
echo "Enter name of tempory user to delete, or just press enter to skip"
read -p "temp user: " temp_user

if [[ $temp_user != ""]]; then
   sudo userdel $temp_user -f -r
fi

echo "Press enter to reboot"
read
sudo reboot now