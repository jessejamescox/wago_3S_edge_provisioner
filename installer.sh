!/bin/bash
# installs the scripts and builds the links for the 3S provisioner

INSTALLER="wago_3S_edge_provisioner"
INSTALLER_URL="https://github.com/jessejamescox/$INSTALLER/archive/refs/heads/main.zip"
INSTALLER_DIR="$INSTALLER-main"
IPK_DIR="/home/ipk/"
IPK_FILE="codesyscontrol_tp600_4.0.0.0_all.ipk"
INIT_DIR="/etc/rc.d"

# download and unzip the installer
wget $INSTALLER_URL && unzip $INSTALLER-main

# move the components around
mv $INSTALLER_DIR/install_3S /etc/init.d/installer_3S && chmod a+x /etc/init.d/install_3S

# move the components around
mkdir /home/ipk && mv $IPK_FILE $IPK_DIR

# move to the startup scripts directory
cd $INIT_DIR

# link the startupscript
ln -s ../init.d/install_3S S99_install_3S

# make the simple link
/etc/init.d/cpsd2intern makelink

#all done
#TODO: add removal of this installer directory