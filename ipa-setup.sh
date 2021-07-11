#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Prepend FreeIPA server to hosts
echo "192.168.10.11 ipa.qrl.nz" > /tmp/newhost
cat /etc/hosts >> /tmp/newhost
cp /tmp/newhost /etc/hosts

# Run automatic IPA setup
apt-get install freeipa-client -y
ipa-client-install --hostname=`hostname -f` \
    --mkhomedir \
    --server=ipa.qrl.nz \
    --domain qrl.nz \
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