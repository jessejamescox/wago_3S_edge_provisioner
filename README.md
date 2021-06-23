# wago_3S_edge_provisioner
Automatically update Edge Controller to current firmware and Codesys Control Runtime for TP600 (also Edge Computer).  Run the command below with internet access to the device to build an automatic updating SD card for Codesys Control Runtime for TP600.

1. Flash a fresh SD card with WAGO firmware

2. Boot Edge Controller or TP600 with the SD card you created

3. Access the shell and run the following script:

`wget https://github.com/jessejamescox/wago_3S_edge_provisioner/archive/refs/heads/main.zip && unzip main.zip && sh wago_3S_edge_provisioner-main/installer.sh`

4. Now, boot any Edge Controller ot TP600 with the SD card installed.  It will replace the existing formware

5. When this is complete remove the SD card and boot the device.  The Codesys Runtime will be installed and the controller will reboot automatically one more time
