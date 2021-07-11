#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Set hostname

hostn=$(cat /etc/hostname)
echo "Existing hostname is $hostn"

# Hostname needs to be unique
# EG: 7c68f0f4-e1dd-4b00-9e89-50a6679f90e1.ipa.qrl.nz
newhost=$(uuidgen).ipa.qrl.nz

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

#display new hostname
echo "Your new hostname is $newhost"

# Run automatic IPA setup
apt-get install freeipa-client -y
ipa-client-install --hostname=$(cat /etc/hostname) \
    --mkhomedir \
    --server=ipa.qrl.nz \
    --domain ipa.qrl.nz \
    --realm QRL.NZ

# Enable mkhomedir
bash -c "cat > /usr/share/pam-configs/mkhomedir" <<EOF
Name: activate mkhomedir
Default: yes
Priority: 900
Session-Type: Additional
Session:
required pam_mkhomedir.so umask=0022 skel=/etc/skel
EOF
pam-auth-update