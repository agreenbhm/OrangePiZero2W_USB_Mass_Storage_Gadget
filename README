## Orange Pi Zero 2W USB Mass Storage Gadget ##

This repo contains .deb packages to install a kernel and supporting packages to the Orange Pi Zero 2W device.  This kernel is configured to allow the device to function as a USB Mass Storage gadget.  There is also a script to configure the device as a mass storage device, and a systemd unit file to run the script.

# Usage #
1. Install .deb packages within "packages" folder.
2. Edit "usb_mass_storage_gadget.sh", changing "/dev/sda" to be whatever target you want to hold your data (can be a raw device, a partition, a file, etc).  In my case I'm writing to an attached raw device /dev/sda.
3. Copy "usb_mass_storage_gadget.sh" to "/usr/local/bin/" and make it executable with "chmod +x /usr/local/bin/usb_mass_storage_gadget.sh".
4. Copy systemd unit file "usb_mass_storage_gadget.service" to "/etc/systemd/system/usb_mass_storage_gadget.service".
5. Enable service with "systemctl enable usb_mass_storage_gadget.service".
6. Start service with "systemctl start usb_mass_storage_gadget.service".

Done.  If you find it's not working examine dmesg on the Orange Pi to see if there are any errors pertaining to "gadget".

Credits:
*http://www.orangepi.org/orangepibbsen/forum.php?mod=viewthread&tid=145208&extra=page%3D1 # info for the kernel build process
*https://popovicu.com/posts/make-your-own-usb-storage-embedded-linux/#project-breakdown # info for the configuration process


