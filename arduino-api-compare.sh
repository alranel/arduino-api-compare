#!/bin/bash

set -e

# Compare cores

cores=(arduino:avr arduino:samd arduino:mbed_nano MegaCoreX:megaavr esp32:esp32 STMicroelectronics:stm32 arduino:mbed_portenta)

arduino-cli config set board_manager.additional_urls https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json
arduino-cli config set board_manager.additional_urls https://raw.githubusercontent.com/stm32duino/BoardManagerFiles/main/package_stmicroelectronics_index.json
arduino-cli config set board_manager.additional_urls https://mcudude.github.io/MegaCoreX/package_MCUdude_MegaCoreX_index.json
arduino-cli core update-index
for core in ${cores[@]}; do
    arduino-cli core install $core
done

this_dir=$(dirname -- "$0")
arduino_data_dir=$(arduino-cli config dump | grep "  data:" | sed -e 's/  data: //')
arduino_user_dir=$(arduino-cli config dump | grep "  user:" | sed -e 's/  user: //')

core_version=()
for core in ${cores[@]}; do
    core_version+=($(arduino-cli core list | grep "$core" | awk '{print $2}'))
done

core_path=()
for i in ${!cores[@]}; do
    core=${cores[$i]}
    vendor=$(echo $core | awk -F: '{print $1}')
    architecture=$(echo $core | awk -F: '{print $2}')
    core_path+=(${arduino_data_dir}/packages/${vendor}/hardware/${architecture}/${core_version[$i]})
done

cat >config-core-api.yml <<EOF
libraries:
  - name: AVR
    description: Arduino core for AVR boards (version ${core_version[0]})
    link: https://github.com/arduino/ArduinoCore-avr
    include:
      - ${core_path[0]}/cores
      - ${core_path[0]}/libraries
      - ${this_dir}/include/std
      - ${this_dir}/include/avr
    defines:
      - UBRRH
  - name: SAMD
    description: Arduino core for SAMD boards (version ${core_version[1]})
    link: https://github.com/arduino/ArduinoCore-samd
    include:
      - ${core_path[1]}/cores
      - ${core_path[1]}/libraries
      - ${this_dir}/include/std
      - ${this_dir}/include/samd
    namespaces:
      - arduino
    defines:
      - SPI_INTERFACES_COUNT=1
      - WIRE_INTERFACES_COUNT=1
      - SERIAL_PORT_USBVIRTUAL=SerialUSB
      - Serial=SerialUSB
  - name: Mbed/Nano
    description: Arduino Mbed core for Nano boards (version ${core_version[2]})
    link: https://github.com/arduino/ArduinoCore-mbed
    include:
      - ${core_path[2]}/cores
      - ${core_path[2]}/libraries
      - ${this_dir}/include/std
      - ${this_dir}/include/mbed
    exclude:
      - ${core_path[2]}/cores/arduino/mbed
    namespaces:
      - arduino
    defines:
      - SERIAL_CDC
      - SPI_HOWMANY=1
      - WIRE_HOWMANY=1
      - DEVICE_I2CSLAVE
  - name: MegaCoreX
    description: Arduino core for ATmega boards (version ${core_version[3]})
    link: https://github.com/MCUdude/MegaCoreX
    include:
      - ${core_path[3]}/cores
      - ${core_path[3]}/libraries
      - ${this_dir}/include/std
      - ${this_dir}/include/avr
    defines:
      - USBCON
      - SPI_INTERFACES_COUNT=1
  - name: ESP32
    description: Arduino core for ESP32 boards (version ${core_version[4]})
    link: https://github.com/espressif/arduino-esp32
    include:
      - ${core_path[4]}/cores
      - ${core_path[4]}/libraries
      - ${this_dir}/include/std
      - ${this_dir}/include/esp32
  - name: STM32
    description: Arduino core for STM32 boards (version ${core_version[4]})
    link: https://github.com/stm32duino/Arduino_Core_STM32
    include:
      - ${core_path[5]}/cores
      - ${core_path[5]}/libraries
      - ${this_dir}/include/std
      - ${this_dir}/include/stm32
    defines:
      - USBCON
      - USBD_USE_CDC
      - HAL_UART_MODULE_ENABLED
      - SERIAL_UART_INSTANCE
      - SERIAL_UART_INSTANCE=0
classes:
  - Client
  - IPAddress
  - Print
  - Server
  - Stream
  - String
  - UDP
singletons:
  - Serial
  - SPI
  - Wire
functions:
  - digitalRead
  - digitalWrite
  - pinMode
  - analogRead
  - analogReference
  - analogWrite
  - analogReadResolution
  - analogWriteResolution
  - noTone
  - pulseIn
  - pulseInLong
  - shiftIn
  - shiftOut
  - tone
  - delay
  - delayMicroseconds
  - micros
  - millis
  - abs
  - pow
  - sqrt
  - cos
  - sin
  - tan
  - constrain
  - map
  - max
  - min
  - sq
  - isAlpha
  - isAlphaNumeric
  - isAscii
  - isControl
  - isDigit
  - isGraph
  - isHexadecimalDigit
  - isLowerCase
  - isPrintable
  - isPunct
  - isSpace
  - isUpperCase
  - isWhitespace
  - random
  - randomSeed
  - bit
  - bitClear
  - bitRead
  - bitSet
  - bitWrite
  - highByte
  - lowByte
  - attachInterrupt
  - detachInterrupt
  - interrupts
  - noInterrupts
EOF

./cpp-api-compare/cpp-api-compare run -c config-core-api.yml -o report-core-api.md


# Compare WiFi libraries

arduino-cli lib install WiFiNINA

cat >config-wifi.yml <<EOF
libraries:
  - name: WiFiNINA
    description: WiFiNINA library
    link: https://github.com/arduino-libraries/WiFiNINA
    include:
      - ${arduino_user_dir}/libraries/WiFiNINA/src
      - ${core_path[1]}/cores
  - name: Portenta
    description: WiFi library in the Arduino core for Portenta boards (version ${core_version[6]})
    link: https://github.com/arduino/ArduinoCore-mbed
    include:
      - ${core_path[6]}/cores
      - ${core_path[6]}/libraries
    exclude:
      - ${core_path[6]}/cores/arduino/mbed
    namespaces:
      - arduino
    defines:
      - COMPONENT_4343W_FS
  - name: ESP32
    description: WiFi library in the Arduino core for ESP32 boards (version ${core_version[4]})
    link: https://github.com/espressif/arduino-esp32
    include:
      - ${core_path[4]}/libraries/WiFi/src
      - ${core_path[4]}/cores
classes:
  - WiFiClient
  - WiFiServer
  - WiFiSSLClient
  - WiFiUDP
singletons:
  - WiFi
EOF

./cpp-api-compare/cpp-api-compare run -c config-wifi.yml -o report-wifi.md
