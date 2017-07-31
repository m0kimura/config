#!/bin/bash
#
  sudo apt-get install build-essential
##
  git clone https://github.com/espruino/Espruino.git
  cd Espruino
  source scripts/provision.sh ESP32
  export ESP_IDF_PATH=$(pwd)/esp-idf
  make clean && BOARD=ESP32 make
##
  sb_pause OK
##
  esp-idf/components/esptool_py/esptool/esptool.py \
   --chip esp32 \
   --port /dev/ttyUSB0 \
   --baud 921600 \
   --before esp32r0 \
   --after hard_reset write_flash \
   -z \
   --flash_mode dio \
   --flash_freq 40m \
   --flash_size detect \
   0x1000 bootloader.bin \
   0x8000 partitions_espruino.bin \
   0x10000 espruino_esp32.bin
