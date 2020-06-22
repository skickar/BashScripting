#!/bin/bash

##to use, run flashbash.sh with two arguments:
##1) the location of the serial port of the device you want to flash
##2) the .bin file you want to flash to the device
## the script will erase the device, flash to it, 
## and then try connecting via screen.
##
## made for the esp8266 deauther by Skickar

## example run:
## bash bashflash.sh /dev/ttyUSB0 /Users/skickar/Desktop/dstike.bin


esptool.py --port $1 erase_flash
wait
esptool.py --port $1 --baud 460800 write_flash --flash_size=detect 0 $2
wait
echo "All done, next"
sleep 5
screen $1 115200
