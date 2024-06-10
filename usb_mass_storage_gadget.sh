#!/bin/bash

cd /sys/kernel/config/usb_gadget/
mkdir g1
cd g1/
echo 0xabcd > idVendor
echo 0x1234 > idProduct
mkdir strings/0x409
echo myserial > strings/0x409/serialnumber
echo agreenbhm > strings/0x409/manufacturer
echo ghettousb > strings/0x409/product
mkdir configs/c.1
echo 120 > configs/c.1/MaxPower
mkdir functions/mass_storage.0
mkdir functions/mass_storage.0/lun.0
echo "/dev/sda" > functions/mass_storage.0/lun.0/file #this is the line to change
ln -s functions/mass_storage.0 configs/c.1
echo 'musb-hdrc.5.auto' > UDC
