# API comparison

This document compares the API of the following libraries:

| Library                                                   | Description                                       |
| --------------------------------------------------------- | ------------------------------------------------- |
| [AVR](https://github.com/arduino/ArduinoCore-avr)         | Arduino core for AVR boards (version 1.8.6)       |
| [SAMD](https://github.com/arduino/ArduinoCore-samd)       | Arduino core for SAMD boards (version 1.8.13)     |
| [Mbed/Nano](https://github.com/arduino/ArduinoCore-mbed)  | Arduino Mbed core for Nano boards (version 3.5.4) |
| [MegaCoreX](https://github.com/MCUdude/MegaCoreX)         | Arduino core for ATmega boards (version 1.1.1)    |
| [ESP32](https://github.com/espressif/arduino-esp32)       | Arduino core for ESP32 boards (version 2.0.5)     |
| [STM32](https://github.com/stm32duino/Arduino_Core_STM32) | Arduino core for STM32 boards (version 2.0.5)     |

## Table of Contents

1. [Global Functions](#global-functions)
2. [Client](#client)
3. [IPAddress](#ipaddress)
4. [Print](#print)
5. [SPI](#spi)
6. [Serial](#serial)
7. [Server](#server)
8. [Stream](#stream)
9. [String](#string)
10. [UDP](#udp)
11. [Wire](#wire)

## Global Functions

|        |                                                                                    | AVR             | SAMD            | Mbed/Nano       | MegaCoreX       | ESP32           | STM32      |
| ------ | ---------------------------------------------------------------------------------- | --------------- | --------------- | --------------- | --------------- | --------------- | ---------- |
|        | **Fully compatible**                                                               |                 |                 |                 |                 |                 |            |
|        | `abs( x)`                                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `analogWrite(pin_size_t pin, int value)`                                           | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `attachInterrupt(pin_size_t interruptNum, voidFuncPtr func, PinStatus mode)`       | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `bit( b)`                                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `bitClear( b)`                                                                     | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `bitRead( b)`                                                                      | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `bitSet( b)`                                                                       | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `bitWrite( b)`                                                                     | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `cos(x )`                                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `delay(unsigned long ms)`                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `delayMicroseconds(uint32_t us)`                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `detachInterrupt(pin_size_t pin)`                                                  | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `digitalWrite(PinName pin, PinStatus val)`                                         | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `highByte( w)`                                                                     | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isAlpha(int c)`                                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isAlphaNumeric(int c)`                                                            | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isAscii(int c)`                                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isControl(int c)`                                                                 | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isDigit(int c)`                                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isGraph(int c)`                                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isHexadecimalDigit(int c)`                                                        | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isLowerCase(int c)`                                                               | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isPrintable(int c)`                                                               | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isPunct(int c)`                                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isSpace(int c)`                                                                   | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isUpperCase(int c)`                                                               | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `bool` | `isWhitespace(int c)`                                                              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `lowByte( w)`                                                                      | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `long` | `map(long x, long in_min, long in_max, long out_min, long out_max)`                | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `noTone(uint8_t outputPin)`                                                        | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `pinMode(uint32_t dwPin, uint32_t dwMode)`                                         | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `pow(x )`                                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `long` | `random(long howbig)`                                                              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `randomSeed(unsigned long )`                                                       | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `shiftOut(pin_size_t dataPin, pin_size_t clockPin, uint8_t bitOrder, uint8_t val)` | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `sin(x )`                                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `sqrt(x )`                                                                         | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | `tan(x )`                                                                          | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `tone(unsigned char outputPin, unsigned int frequency, unsigned long duration)`    | ✔️              | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
|        | **Differing return values**                                                        |                 |                 |                 |                 |                 |            |
|        | `analogRead(PinName pin)`                                                          | `int`           | `int`           | `int`           | `int`           | `uint16_t`      | `uint32_t` |
|        | `constrain(const T & x, const L & l, const H & h)`                                 | ``              | ``              | ``              | `auto`          | ``              | ``         |
|        | `digitalRead(uint32_t ulPin)`                                                      | `int`           | `PinStatus`     | `PinStatus`     | `uint8_t`       | `int`           | `int`      |
|        | `interrupts()`                                                                     | `void`          | `int`           | `int`           | `void`          | `void`          | `int`      |
|        | `micros()`                                                                         | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `uint32_t` |
|        | `millis()`                                                                         | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `uint32_t` |
|        | `noInterrupts()`                                                                   | `void`          | `int`           | `int`           | `void`          | `void`          | `int`      |
|        | `pulseIn(pin_size_t pin, uint8_t state, unsigned long timeout)`                    | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `uint32_t` |
|        | `pulseInLong(pin_size_t pin, uint8_t state, unsigned long timeout)`                | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `unsigned long` | `uint32_t` |
|        | `shiftIn(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder)`                     | `uint8_t`       | `uint8_t`       | `uint8_t`       | `pin_size_t`    | `uint8_t`       | `uint32_t` |
|        | `sq(const T & x)`                                                                  | ``              | ``              | ``              | `auto`          | ``              | ``         |
|        | **Limited compatibility**                                                          |                 |                 |                 |                 |                 |            |
| `void` | `analogReadResolution(int res)`                                                    |                 | ✔️              | ✔️              | ✔️              | ✔️              | ✔️         |
| `void` | `analogReference(eAnalogReference ulMode)`                                         | ✔️              | ✔️              | ✔️              | ✔️              |                 | ✔️         |
| `void` | `analogWriteResolution(int res)`                                                   |                 | ✔️              | ✔️              |                 |                 | ✔️         |
|        | `max( a,  b)`                                                                      | ✔️              | ✔️              | ✔️              | ✔️              |                 |            |
|        | `min( a,  b)`                                                                      | ✔️              | ✔️              | ✔️              | ✔️              |                 |            |

## Client

|                 |                                                                                               | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32                | STM32  |
| --------------- | --------------------------------------------------------------------------------------------- | ------ | ------ | --------- | --------- | -------------------- | ------ |
|                 | **Fully compatible**                                                                          |        |        |           |           |                      |        |
| `int`           | `available()`                                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `clearWriteError()`                                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `connect(IPAddress ip, uint16_t port)`                                                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `connect(const char * host, uint16_t port)`                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `uint8_t`       | `connected()`                                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char target)`                                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(uint8_t * target)`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char * target)`                                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const uint8_t * target)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const char * target)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char * target, size_t length)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(uint8_t * target, size_t length)`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const char * target, size_t length)`                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const uint8_t * target, size_t length)`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(uint8_t * target, char * terminator)`                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const char * target, const char * terminator)`                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, const char * terminator)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(char * target, char * terminator)`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, size_t targetLen, const char * terminate, size_t termLen)` | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const char * target, size_t targetLen, const char * terminate, size_t termLen)`    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(uint8_t * target, size_t targetLen, char * terminate, size_t termLen)`             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(char * target, size_t targetLen, char * terminate, size_t termLen)`                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `flush()`                                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `unsigned long` | `getTimeout()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `getWriteError()`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
|                 | `operator bool()`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `peek()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const __FlashStringHelper * )`                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const char )`                                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(char )`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const  &String )`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const  &Printable )`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(long long , int  = 10)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(long , int  = 10)`                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned int , int  = 10)`                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned long , int  = 10)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned char , int  = 10)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned long long , int  = 10)`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(int , int  = 10)`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(struct tm * timeinfo, const char * format = NULL)`                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(double , int  = 2)`                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println()`                                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const  &Printable )`                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const __FlashStringHelper * )`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(char )`                                                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const char )`                                                                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const  &String s)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(long , int  = 10)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(double , int  = 2)`                                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned int , int  = 10)`                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(int , int  = 10)`                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(struct tm * timeinfo, const char * format = NULL)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned long , int  = 10)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned char , int  = 10)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned long long , int  = 10)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(long long , int  = 10)`                                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `read()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `read(uint8_t * buf, size_t size)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytes(char * buffer, size_t length)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytes(uint8_t * buffer, size_t length)`                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, uint8_t * buffer, size_t length)`                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, char * buffer, size_t length)`                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `String`        | `readString()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `String`        | `readStringUntil(char terminator)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `setTimeout(unsigned long timeout)`                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `stop()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const char * str)`                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(uint8_t )`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const char * buffer, size_t size)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const uint8_t * buf, size_t size)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
|                 | **Differing return values**                                                                   |        |        |           |           |                      |        |
|                 | `availableForWrite()`                                                                         | `int`  | `int`  | `int`     | `int`     | `size_t virtual int` | `int`  |
|                 | **Limited compatibility**                                                                     |        |        |           |           |                      |        |
| `float`         | `parseFloat()`                                                                                |        |        |           |           | ✔️                   |        |
| `float`         | `parseFloat(LookaheadMode lookahead, char ignore = '\x01')`                                   | ✔️     | ✔️     | ✔️        | ✔️        |                      | ✔️     |
| `long`          | `parseInt()`                                                                                  |        |        |           |           | ✔️                   |        |
| `long`          | `parseInt(LookaheadMode lookahead, char ignore = '\x01')`                                     | ✔️     | ✔️     | ✔️        | ✔️        |                      | ✔️     |
| `int`           | `printf(const __FlashStringHelper * format, ... )`                                            |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`           | `printf(const char * format, ... )`                                                           |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`           | `vprintf(const char * format, va_list ap)`                                                    |        |        |           |           |                      | ✔️     |
| `int`           | `vprintf(const __FlashStringHelper * format, va_list ap)`                                     |        |        |           |           |                      | ✔️     |

## IPAddress

|               |                                                                                                                                                                                                                    | AVR       | SAMD      | Mbed/Nano | MegaCoreX | ESP32     | STM32       |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------- | --------- | --------- | --------- | --------- | ----------- |
|               | **Fully compatible**                                                                                                                                                                                               |           |           |           |           |           |             |
|               | `IPAddress()`                                                                                                                                                                                                      | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | `IPAddress(const char * address)`                                                                                                                                                                                  | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | `IPAddress(IPType ip_type)`                                                                                                                                                                                        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | `IPAddress(const uint8_t * address)`                                                                                                                                                                               | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | `IPAddress(uint32_t address)`                                                                                                                                                                                      | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | `IPAddress(uint8_t first_octet, uint8_t second_octet, uint8_t third_octet, uint8_t fourth_octet)`                                                                                                                  | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| `bool`        | `fromString(const char * address)`                                                                                                                                                                                 | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| `bool`        | `fromString(const  &String address)`                                                                                                                                                                               | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | `operator uint32_t()`                                                                                                                                                                                              | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| ` &IPAddress` | `operator=(uint32_t address)`                                                                                                                                                                                      | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| ` &IPAddress` | `operator=(const char * address)`                                                                                                                                                                                  | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| ` &IPAddress` | `operator=(const uint8_t * address)`                                                                                                                                                                               | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| `bool`        | `operator==(const uint8_t * addr)`                                                                                                                                                                                 | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| `bool`        | `operator==(const  &IPAddress addr)`                                                                                                                                                                               | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
| `size_t`      | `printTo(&Print p)`                                                                                                                                                                                                | ✔️        | ✔️        | ✔️        | ✔️        | ✔️        | ✔️          |
|               | **Differing return values**                                                                                                                                                                                        |           |           |           |           |           |             |
|               | `operator[](int index)`                                                                                                                                                                                            | `uint8_t` | `uint8_t` | `uint8_t` | `uint8_t` | `uint8_t` | `uint8_t &` |
|               | **Limited compatibility**                                                                                                                                                                                          |           |           |           |           |           |             |
|               | `IPAddress(IPType ip_type, const uint8_t * address)`                                                                                                                                                               |           |           | ✔️        |           |           |             |
|               | `IPAddress(uint8_t o1, uint8_t o2, uint8_t o3, uint8_t o4, uint8_t o5, uint8_t o6, uint8_t o7, uint8_t o8, uint8_t o9, uint8_t o10, uint8_t o11, uint8_t o12, uint8_t o13, uint8_t o14, uint8_t o15, uint8_t o16)` |           |           | ✔️        |           |           |             |
| `bool`        | `operator!=(const  &IPAddress addr)`                                                                                                                                                                               |           | ✔️        | ✔️        |           |           |             |
| `String`      | `toString()`                                                                                                                                                                                                       |           |           |           |           | ✔️        |             |
| `IPType`      | `type()`                                                                                                                                                                                                           |           |           | ✔️        |           |           |             |

## Print

|          |                                                             | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32                | STM32  |
| -------- | ----------------------------------------------------------- | ------ | ------ | --------- | --------- | -------------------- | ------ |
|          | **Fully compatible**                                        |        |        |           |           |                      |        |
|          | `Print()`                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`   | `clearWriteError()`                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`   | `flush()`                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`    | `getWriteError()`                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const  &Printable )`                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const char )`                                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const  &String )`                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const __FlashStringHelper * )`                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(char )`                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(double , int  = 2)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned long long , int  = 10)`                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(int , int  = 10)`                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(struct tm * timeinfo, const char * format = NULL)`   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned char , int  = 10)`                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(long , int  = 10)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned int , int  = 10)`                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(long long , int  = 10)`                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned long , int  = 10)`                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println()`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(char )`                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const __FlashStringHelper * )`                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const  &String s)`                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const char )`                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const  &Printable )`                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(int , int  = 10)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned long long , int  = 10)`                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(double , int  = 2)`                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(struct tm * timeinfo, const char * format = NULL)` | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(long long , int  = 10)`                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned char , int  = 10)`                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned long , int  = 10)`                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(long , int  = 10)`                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned int , int  = 10)`                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(uint8_t )`                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(const char * str)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(const char * buffer, size_t size)`                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(const uint8_t * buffer, size_t size)`                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
|          | **Differing return values**                                 |        |        |           |           |                      |        |
|          | `availableForWrite()`                                       | `int`  | `int`  | `int`     | `int`     | `size_t virtual int` | `int`  |
|          | **Limited compatibility**                                   |        |        |           |           |                      |        |
| `int`    | `printf(const __FlashStringHelper * format, ... )`          |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`    | `printf(const char * format, ... )`                         |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`    | `vprintf(const char * format, va_list ap)`                  |        |        |           |           |                      | ✔️     |
| `int`    | `vprintf(const __FlashStringHelper * format, va_list ap)`   |        |        |           |           |                      | ✔️     |

## SPI

|                       |                                                                                            | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32  | STM32  |
| --------------------- | ------------------------------------------------------------------------------------------ | ------ | ------ | --------- | --------- | ------ | ------ |
|                       | **Fully compatible**                                                                       |        |        |           |           |        |        |
| `void`                | `begin()`                                                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️     | ✔️     |
| `void`                | `beginTransaction(SPISettings settings)`                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️     | ✔️     |
| `void`                | `end()`                                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️     | ✔️     |
| `void`                | `endTransaction()`                                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️     | ✔️     |
|                       | **Differing return values**                                                                |        |        |           |           |        |        |
|                       | `transfer(void * data, uint32_t size)`                                                     | `void` | `void` | `void`    | `void`    | `void` | `byte` |
|                       | `transfer(void * buf, size_t count)`                                                       | `void` | `void` | `void`    | `void`    | `void` | `byte` |
|                       | `transfer(uint8_t _data, SPITransferMode _mode)`                                           | `void` | `void` | `void`    | `void`    | `void` | `byte` |
|                       | **Limited compatibility**                                                                  |        |        |           |           |        |        |
| `void`                | `attachInterrupt()`                                                                        | ✔️     | ✔️     | ✔️        |           |        | ✔️     |
| `void`                | `begin(uint8_t _pin = NUM_DIGITAL_PINS)`                                                   |        |        |           |           | ✔️     | ✔️     |
| `void`                | `begin(int8_t sck = -1, int8_t miso = -1, int8_t mosi = -1, int8_t ss = -1)`               |        |        |           |           | ✔️     |        |
| `void`                | `beginTransaction(uint8_t pin, SPISettings settings)`                                      |        |        |           |           |        | ✔️     |
| ` *spi_t`             | `bus()`                                                                                    |        |        |           |           | ✔️     |        |
| `void`                | `detachInterrupt()`                                                                        | ✔️     | ✔️     | ✔️        |           |        | ✔️     |
| `void`                | `endTransaction(uint8_t pin)`                                                              |        |        |           |           |        | ✔️     |
| `uint32_t`            | `getClockDivider()`                                                                        |        |        |           |           | ✔️     |        |
| `SPI_HandleTypeDef *` | `getHandle()`                                                                              |        |        |           |           |        | ✔️     |
| `void`                | `notUsingInterrupt(int interruptNumber)`                                                   | ✔️     | ✔️     | ✔️        | ✔️        |        |        |
| `void`                | `notUsingInterrupt(uint8_t interruptNumber)`                                               | ✔️     | ✔️     | ✔️        | ✔️        |        |        |
| `int8_t`              | `pinSS()`                                                                                  |        |        |           |           | ✔️     |        |
| `bool`                | `pins(uint8_t pinMOSI, uint8_t pinMISO, uint8_t pinSCK, uint8_t pinSS)`                    |        |        |           | ✔️        |        |        |
| `void`                | `setBitOrder(uint8_t bitOrder)`                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setBitOrder(BitOrder order)`                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setBitOrder(BitOrder _order)`                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setBitOrder(uint8_t _pin, BitOrder )`                                                     |        |        |           |           |        | ✔️     |
| `void`                | `setClockDivider(uint8_t _div)`                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setClockDivider(uint8_t uc_div)`                                                          | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setClockDivider(uint8_t clockDiv)`                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setClockDivider(uint32_t clockDiv)`                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setClockDivider(uint8_t _pin, uint8_t )`                                                  |        |        |           |           |        | ✔️     |
| `void`                | `setDataMode(uint8_t _mode)`                                                               | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setDataMode(uint8_t uc_mode)`                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setDataMode(uint8_t dataMode)`                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`                | `setDataMode(uint8_t _pin, uint8_t )`                                                      |        |        |           |           |        | ✔️     |
| `void`                | `setFrequency(uint32_t freq)`                                                              |        |        |           |           | ✔️     |        |
| `void`                | `setHwCs(bool use)`                                                                        |        |        |           |           | ✔️     |        |
| `void`                | `setMISO(PinName miso)`                                                                    |        |        |           |           |        | ✔️     |
| `void`                | `setMISO(uint32_t miso)`                                                                   |        |        |           |           |        | ✔️     |
| `void`                | `setMOSI(PinName mosi)`                                                                    |        |        |           |           |        | ✔️     |
| `void`                | `setMOSI(uint32_t mosi)`                                                                   |        |        |           |           |        | ✔️     |
| `void`                | `setSCLK(PinName sclk)`                                                                    |        |        |           |           |        | ✔️     |
| `void`                | `setSCLK(uint32_t sclk)`                                                                   |        |        |           |           |        | ✔️     |
| `void`                | `setSSEL(uint32_t ssel)`                                                                   |        |        |           |           |        | ✔️     |
| `void`                | `setSSEL(PinName ssel)`                                                                    |        |        |           |           |        | ✔️     |
| `bool`                | `swap(uint8_t state = 1)`                                                                  |        |        |           | ✔️        |        |        |
| `uint8_t`             | `transfer(uint8_t data)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️     |        |
| `void`                | `transfer(void * _buf, size_t _count, SPITransferMode _mode)`                              |        |        |           |           |        | ✔️     |
| `byte`                | `transfer(uint8_t pin, uint8_t _data, SPITransferMode _mode)`                              |        |        |           |           |        | ✔️     |
| `void`                | `transfer(void * _bufout, void * _bufin, size_t _count, SPITransferMode _mode)`            |        |        |           |           |        | ✔️     |
| `void`                | `transfer(uint8_t pin, void * _buf, size_t _count, SPITransferMode _mode)`                 |        |        |           |           |        | ✔️     |
| `void`                | `transfer(byte _pin, void * _bufout, void * _bufin, size_t _count, SPITransferMode _mode)` |        |        |           |           |        | ✔️     |
| `uint16_t`            | `transfer16(uint16_t data)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️     |        |
| `uint16_t`            | `transfer16(uint16_t _data, SPITransferMode _mode)`                                        |        |        |           |           |        | ✔️     |
| `uint16_t`            | `transfer16(uint8_t pin, uint16_t _data, SPITransferMode _mode)`                           |        |        |           |           |        | ✔️     |
| `uint32_t`            | `transfer32(uint32_t data)`                                                                |        |        |           |           | ✔️     |        |
| `void`                | `transferBits(uint32_t data, uint32_t * out, uint8_t bits)`                                |        |        |           |           | ✔️     |        |
| `void`                | `transferBytes(const uint8_t * data, uint8_t * out, uint32_t size)`                        |        |        |           |           | ✔️     |        |
| `void`                | `usingInterrupt(uint8_t interruptNumber)`                                                  | ✔️     | ✔️     | ✔️        | ✔️        |        | ✔️     |
| `void`                | `usingInterrupt(int interruptNumber)`                                                      | ✔️     | ✔️     | ✔️        | ✔️        |        | ✔️     |
| `void`                | `write(uint8_t data)`                                                                      |        |        |           |           | ✔️     |        |
| `void`                | `write16(uint16_t data)`                                                                   |        |        |           |           | ✔️     |        |
| `void`                | `write32(uint32_t data)`                                                                   |        |        |           |           | ✔️     |        |
| `void`                | `writeBytes(const uint8_t * data, uint32_t size)`                                          |        |        |           |           | ✔️     |        |
| `void`                | `writePattern(const uint8_t * data, uint8_t size, uint32_t repeat)`                        |        |        |           |           | ✔️     |        |
| `void`                | `writePixels(const void * data, uint32_t size)`                                            |        |        |           |           | ✔️     |        |

## Serial

|                 |                                                                                                                                                                                          | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32  | STM32  |
| --------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | ------ | --------- | --------- | ------ | ------ |
|                 | **Limited compatibility**                                                                                                                                                                |        |        |           |           |        |        |
| `void`          | `_rx_complete_irq()`                                                                                                                                                                     | ✔️     |        |           |           |        |        |
| `void`          | `_tx_udr_empty_irq()`                                                                                                                                                                    | ✔️     |        |           |           |        |        |
| `int`           | `available()`                                                                                                                                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `int`           | `availableForWrite()`                                                                                                                                                                    | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `uint32_t`      | `baud()`                                                                                                                                                                                 |        | ✔️     |           | ✔️        |        | ✔️     |
| `uint32_t`      | `baudRate()`                                                                                                                                                                             |        |        |           |           | ✔️     |        |
| `void`          | `begin()`                                                                                                                                                                                |        |        |           |           |        | ✔️     |
| `void`          | `begin(uint32_t )`                                                                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(unsigned long )`                                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(unsigned long baud)`                                                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(uint32_t baud_count)`                                                                                                                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(unsigned long , uint16_t )`                                                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(uint32_t , uint8_t )`                                                                                                                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(unsigned long , uint8_t )`                                                                                                                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `begin(unsigned long baud, uint32_t config = 0x800001c, int8_t rxPin = -1, int8_t txPin = -1, bool invert = false, unsigned long timeout_ms = 20000UL, uint8_t rxfifo_full_thrhd = 112)` |        |        |           |           | ✔️     |        |
| `void`          | `clear()`                                                                                                                                                                                |        | ✔️     |           |           |        |        |
| `void`          | `clearWriteError()`                                                                                                                                                                      | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `dtr()`                                                                                                                                                                                  |        | ✔️     |           | ✔️        |        | ✔️     |
| `void`          | `dtr(bool enable)`                                                                                                                                                                       |        |        |           |           |        | ✔️     |
| `void`          | `end()`                                                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `end(bool fullyTerminate = true)`                                                                                                                                                        |        |        |           |           | ✔️     |        |
| `void`          | `eventQueueReset()`                                                                                                                                                                      |        |        |           |           | ✔️     |        |
| `bool`          | `find(char * target)`                                                                                                                                                                    | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(char target)`                                                                                                                                                                      | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(const uint8_t * target)`                                                                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(uint8_t * target)`                                                                                                                                                                 | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(const char * target)`                                                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(char * target, size_t length)`                                                                                                                                                     | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(uint8_t * target, size_t length)`                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(const char * target, size_t length)`                                                                                                                                               | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `find(const uint8_t * target, size_t length)`                                                                                                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(uint8_t * target, char * terminator)`                                                                                                                                         | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(char * target, char * terminator)`                                                                                                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(const char * target, const char * terminator)`                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, const char * terminator)`                                                                                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(const char * target, size_t targetLen, const char * terminate, size_t termLen)`                                                                                               | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(char * target, size_t targetLen, char * terminate, size_t termLen)`                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, size_t targetLen, const char * terminate, size_t termLen)`                                                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `findUntil(uint8_t * target, size_t targetLen, char * terminate, size_t termLen)`                                                                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `flush()`                                                                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `void`          | `flush(bool txOnly)`                                                                                                                                                                     |        |        |           |           | ✔️     |        |
| `unsigned long` | `getTimeout()`                                                                                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `int`           | `getWriteError()`                                                                                                                                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `uint8_t`       | `numbits()`                                                                                                                                                                              |        | ✔️     |           | ✔️        |        | ✔️     |
| `void`          | `onReceive(OnReceiveCb function, bool onlyOnTimeout = false)`                                                                                                                            |        |        |           |           | ✔️     |        |
| `void`          | `onReceiveError(OnReceiveErrorCb function)`                                                                                                                                              |        |        |           |           | ✔️     |        |
|                 | `operator bool()`                                                                                                                                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `uint8_t`       | `paritytype()`                                                                                                                                                                           |        | ✔️     |           | ✔️        |        | ✔️     |
| `float`         | `parseFloat()`                                                                                                                                                                           |        |        |           |           | ✔️     |        |
| `float`         | `parseFloat(LookaheadMode lookahead, char ignore = '\x01')`                                                                                                                              | ✔️     | ✔️     |           | ✔️        |        | ✔️     |
| `long`          | `parseInt()`                                                                                                                                                                             |        |        |           |           | ✔️     |        |
| `long`          | `parseInt(LookaheadMode lookahead, char ignore = '\x01')`                                                                                                                                | ✔️     | ✔️     |           | ✔️        |        | ✔️     |
| `int`           | `peek()`                                                                                                                                                                                 | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(const  &Printable )`                                                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(const char )`                                                                                                                                                                     | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(const __FlashStringHelper * )`                                                                                                                                                    | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(char )`                                                                                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(const  &String )`                                                                                                                                                                 | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(long long , int  = 10)`                                                                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(int , int  = 10)`                                                                                                                                                                 | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(long , int  = 10)`                                                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(unsigned long , int  = 10)`                                                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(unsigned int , int  = 10)`                                                                                                                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(unsigned char , int  = 10)`                                                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(double , int  = 2)`                                                                                                                                                               | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(struct tm * timeinfo, const char * format = NULL)`                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `print(unsigned long long , int  = 10)`                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `int`           | `printf(const __FlashStringHelper * format, ... )`                                                                                                                                       |        |        |           | ✔️        | ✔️     | ✔️     |
| `int`           | `printf(const char * format, ... )`                                                                                                                                                      |        |        |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println()`                                                                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(const char )`                                                                                                                                                                   | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(const __FlashStringHelper * )`                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(const  &Printable )`                                                                                                                                                            | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(char )`                                                                                                                                                                         | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(const  &String s)`                                                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(unsigned int , int  = 10)`                                                                                                                                                      | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(unsigned char , int  = 10)`                                                                                                                                                     | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(long long , int  = 10)`                                                                                                                                                         | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(int , int  = 10)`                                                                                                                                                               | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(unsigned long long , int  = 10)`                                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(unsigned long , int  = 10)`                                                                                                                                                     | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(double , int  = 2)`                                                                                                                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(long , int  = 10)`                                                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `println(struct tm * timeinfo, const char * format = NULL)`                                                                                                                              | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `int`           | `read()`                                                                                                                                                                                 | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `read(char * buffer, size_t size)`                                                                                                                                                       |        |        |           |           | ✔️     |        |
| `size_t`        | `read(uint8_t * buffer, size_t size)`                                                                                                                                                    |        |        |           |           | ✔️     |        |
| `int32_t`       | `readBreak()`                                                                                                                                                                            |        | ✔️     |           | ✔️        |        |        |
| `size_t`        | `readBytes(char * buffer, size_t length)`                                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `readBytes(uint8_t * buffer, size_t length)`                                                                                                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, uint8_t * buffer, size_t length)`                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, char * buffer, size_t length)`                                                                                                                          | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `String`        | `readString()`                                                                                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `String`        | `readStringUntil(char terminator)`                                                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `bool`          | `rts()`                                                                                                                                                                                  |        | ✔️     |           | ✔️        |        | ✔️     |
| `void`          | `setDebugOutput(bool )`                                                                                                                                                                  |        |        |           |           | ✔️     |        |
| `void`          | `setHwFlowCtrlMode(uint8_t mode = 0x3, uint8_t threshold = 64)`                                                                                                                          |        |        |           |           | ✔️     |        |
| `void`          | `setPins(int8_t rxPin, int8_t txPin, int8_t ctsPin = -1, int8_t rtsPin = -1)`                                                                                                            |        |        |           |           | ✔️     |        |
| `size_t`        | `setRxBufferSize(size_t new_size)`                                                                                                                                                       |        |        |           |           | ✔️     |        |
| `void`          | `setRxFIFOFull(uint8_t fifoBytes)`                                                                                                                                                       |        |        |           |           | ✔️     |        |
| `void`          | `setRxInvert(bool )`                                                                                                                                                                     |        |        |           |           | ✔️     |        |
| `void`          | `setRxTimeout(uint8_t symbols_timeout)`                                                                                                                                                  |        |        |           |           | ✔️     |        |
| `void`          | `setTimeout(unsigned long timeout)`                                                                                                                                                      | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `setTxBufferSize(size_t new_size)`                                                                                                                                                       |        |        |           |           | ✔️     |        |
| `uint8_t`       | `stopbits()`                                                                                                                                                                             |        | ✔️     |           | ✔️        |        | ✔️     |
| `void`          | `updateBaudRate(unsigned long baud)`                                                                                                                                                     |        |        |           |           | ✔️     |        |
| `int`           | `vprintf(const __FlashStringHelper * format, va_list ap)`                                                                                                                                |        |        |           |           |        | ✔️     |
| `int`           | `vprintf(const char * format, va_list ap)`                                                                                                                                               |        |        |           |           |        | ✔️     |
| `size_t`        | `write(unsigned int n)`                                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(int n)`                                                                                                                                                                           | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(unsigned long n)`                                                                                                                                                                 | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(uint8_t )`                                                                                                                                                                        | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(long n)`                                                                                                                                                                          | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(const char * s)`                                                                                                                                                                  | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(const char * str)`                                                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(const uint8_t * buffer, size_t size)`                                                                                                                                             | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(const char * buffer, size_t size)`                                                                                                                                                | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |
| `size_t`        | `write(const uint8_t * , size_t )`                                                                                                                                                       | ✔️     | ✔️     |           | ✔️        | ✔️     | ✔️     |

## Server

|          |                                                             | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32                | STM32  |
| -------- | ----------------------------------------------------------- | ------ | ------ | --------- | --------- | -------------------- | ------ |
|          | **Fully compatible**                                        |        |        |           |           |                      |        |
| `void`   | `begin()`                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`   | `clearWriteError()`                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`   | `flush()`                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`    | `getWriteError()`                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const  &String )`                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const __FlashStringHelper * )`                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const char )`                                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(char )`                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(const  &Printable )`                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned int , int  = 10)`                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(double , int  = 2)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned long , int  = 10)`                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned char , int  = 10)`                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(long long , int  = 10)`                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(long , int  = 10)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(int , int  = 10)`                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(unsigned long long , int  = 10)`                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `print(struct tm * timeinfo, const char * format = NULL)`   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println()`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const  &Printable )`                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const char )`                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const __FlashStringHelper * )`                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(char )`                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(const  &String s)`                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned char , int  = 10)`                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(double , int  = 2)`                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(int , int  = 10)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned long , int  = 10)`                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(struct tm * timeinfo, const char * format = NULL)` | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(long long , int  = 10)`                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned long long , int  = 10)`                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(long , int  = 10)`                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `println(unsigned int , int  = 10)`                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(const char * str)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(uint8_t )`                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(const char * buffer, size_t size)`                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t` | `write(const uint8_t * buffer, size_t size)`                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
|          | **Differing return values**                                 |        |        |           |           |                      |        |
|          | `availableForWrite()`                                       | `int`  | `int`  | `int`     | `int`     | `size_t virtual int` | `int`  |
|          | **Limited compatibility**                                   |        |        |           |           |                      |        |
| `void`   | `begin(uint16_t port = 0)`                                  |        |        |           |           | ✔️                   |        |
| `int`    | `printf(const char * format, ... )`                         |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`    | `printf(const __FlashStringHelper * format, ... )`          |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`    | `vprintf(const char * format, va_list ap)`                  |        |        |           |           |                      | ✔️     |
| `int`    | `vprintf(const __FlashStringHelper * format, va_list ap)`   |        |        |           |           |                      | ✔️     |

## Stream

|                 |                                                                                               | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32                | STM32  |
| --------------- | --------------------------------------------------------------------------------------------- | ------ | ------ | --------- | --------- | -------------------- | ------ |
|                 | **Fully compatible**                                                                          |        |        |           |           |                      |        |
|                 | `Stream()`                                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `available()`                                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `clearWriteError()`                                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char * target)`                                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const char * target)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char target)`                                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const uint8_t * target)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(uint8_t * target)`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(uint8_t * target, size_t length)`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const uint8_t * target, size_t length)`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const char * target, size_t length)`                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char * target, size_t length)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(char * target, char * terminator)`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, const char * terminator)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(uint8_t * target, char * terminator)`                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const char * target, const char * terminator)`                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, size_t targetLen, const char * terminate, size_t termLen)` | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const char * target, size_t targetLen, const char * terminate, size_t termLen)`    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(char * target, size_t targetLen, char * terminate, size_t termLen)`                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(uint8_t * target, size_t targetLen, char * terminate, size_t termLen)`             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `flush()`                                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `unsigned long` | `getTimeout()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `getWriteError()`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `peek()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const char )`                                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const  &Printable )`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const  &String )`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(char )`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const __FlashStringHelper * )`                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(struct tm * timeinfo, const char * format = NULL)`                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(long , int  = 10)`                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned long long , int  = 10)`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned int , int  = 10)`                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned long , int  = 10)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(long long , int  = 10)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(double , int  = 2)`                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned char , int  = 10)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(int , int  = 10)`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println()`                                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const  &String s)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const  &Printable )`                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const __FlashStringHelper * )`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(char )`                                                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const char )`                                                                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(double , int  = 2)`                                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned char , int  = 10)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned long , int  = 10)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(int , int  = 10)`                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned int , int  = 10)`                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned long long , int  = 10)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(long long , int  = 10)`                                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(struct tm * timeinfo, const char * format = NULL)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(long , int  = 10)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `read()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytes(uint8_t * buffer, size_t length)`                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytes(char * buffer, size_t length)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, char * buffer, size_t length)`                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, uint8_t * buffer, size_t length)`                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `String`        | `readString()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `String`        | `readStringUntil(char terminator)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `setTimeout(unsigned long timeout)`                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const char * str)`                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(uint8_t )`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const char * buffer, size_t size)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const uint8_t * buffer, size_t size)`                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
|                 | **Differing return values**                                                                   |        |        |           |           |                      |        |
|                 | `availableForWrite()`                                                                         | `int`  | `int`  | `int`     | `int`     | `size_t virtual int` | `int`  |
|                 | **Limited compatibility**                                                                     |        |        |           |           |                      |        |
| `float`         | `parseFloat()`                                                                                |        |        |           |           | ✔️                   |        |
| `float`         | `parseFloat(LookaheadMode lookahead, char ignore = '\x01')`                                   | ✔️     | ✔️     | ✔️        | ✔️        |                      | ✔️     |
| `long`          | `parseInt()`                                                                                  |        |        |           |           | ✔️                   |        |
| `long`          | `parseInt(LookaheadMode lookahead, char ignore = '\x01')`                                     | ✔️     | ✔️     | ✔️        | ✔️        |                      | ✔️     |
| `int`           | `printf(const __FlashStringHelper * format, ... )`                                            |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`           | `printf(const char * format, ... )`                                                           |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`           | `vprintf(const char * format, va_list ap)`                                                    |        |        |           |           |                      | ✔️     |
| `int`           | `vprintf(const __FlashStringHelper * format, va_list ap)`                                     |        |        |           |           |                      | ✔️     |

## String

|                 |                                                                                  | AVR             | SAMD            | Mbed/Nano | MegaCoreX       | ESP32           | STM32           |
| --------------- | -------------------------------------------------------------------------------- | --------------- | --------------- | --------- | --------------- | --------------- | --------------- |
|                 | **Fully compatible**                                                             |                 |                 |           |                 |                 |                 |
|                 | `String(const  &String str)`                                                     | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(const char * cstr = "")`                                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(const __FlashStringHelper * str)`                                        | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(char c)`                                                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(unsigned long long , unsigned char base = 10)`                           | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(unsigned char , unsigned char base = 10)`                                | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(double , unsigned char decimalPlaces = 2)`                               | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(unsigned int , unsigned char base = 10)`                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(float , unsigned char decimalPlaces = 2)`                                | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(const char * cstr, unsigned int length)`                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(double , unsigned int decimalPlaces = 2)`                                | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(long long , unsigned char base = 10)`                                    | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(unsigned long , unsigned char base = 10)`                                | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(const uint8_t * cstr, unsigned int length)`                              | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(long , unsigned char base = 10)`                                         | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(int , unsigned char base = 10)`                                          | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `String(float , unsigned int decimalPlaces = 2)`                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `const char *`  | `c_str()`                                                                        | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `char`          | `charAt(unsigned int index)`                                                     | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `compareTo(const char * cstr)`                                                   | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `compareTo(const  &String s)`                                                    | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `getBytes(unsigned char * buf, unsigned int bufsize, unsigned int index = 0)`    | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `indexOf(char ch)`                                                               | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `indexOf(const  &String str)`                                                    | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `indexOf(char ch, unsigned int fromIndex)`                                       | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `indexOf(const  &String str, unsigned int fromIndex)`                            | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `lastIndexOf(char ch)`                                                           | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `lastIndexOf(const  &String str)`                                                | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `lastIndexOf(const  &String str, unsigned int fromIndex)`                        | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `int`           | `lastIndexOf(char ch, unsigned int fromIndex)`                                   | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `unsigned int`  | `length()`                                                                       | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | `operator StringIfHelperType()`                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(unsigned long num)`                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(long num)`                                                           | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(float num)`                                                          | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(int num)`                                                            | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(const __FlashStringHelper * str)`                                    | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(unsigned long long num)`                                             | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(long long num)`                                                      | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(unsigned char num)`                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(double num)`                                                         | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(char c)`                                                             | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(const char * cstr)`                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(unsigned int num)`                                                   | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator+=(const  &String rhs)`                                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator=(const __FlashStringHelper * str)`                                     | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator=(const char * cstr)`                                                   | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| ` &String`      | `operator=(const  &String rhs)`                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `remove(unsigned int index)`                                                     | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `remove(unsigned int index, unsigned int count)`                                 | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(const __FlashStringHelper * find, const char * replace)`                | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(const __FlashStringHelper * find, const  &String replace)`              | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(const char * find, const  &String replace)`                             | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(char find, char replace)`                                               | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(const __FlashStringHelper * find, const __FlashStringHelper * replace)` | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(const  &String find, const  &String replace)`                           | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `replace(const char * find, const char * replace)`                               | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `setCharAt(unsigned int index, char c)`                                          | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `String`        | `substring(unsigned int beginIndex)`                                             | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `String`        | `substring(unsigned int beginIndex, unsigned int endIndex)`                      | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `toCharArray(char * buf, unsigned int bufsize, unsigned int index = 0)`          | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `double`        | `toDouble()`                                                                     | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `float`         | `toFloat()`                                                                      | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `long`          | `toInt()`                                                                        | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `toLowerCase()`                                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `toUpperCase()`                                                                  | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
| `void`          | `trim()`                                                                         | ✔️              | ✔️              | ✔️        | ✔️              | ✔️              | ✔️              |
|                 | **Differing return values**                                                      |                 |                 |           |                 |                 |                 |
|                 | `begin()`                                                                        | `char *`        | `char *`        | `char *`  | `char *`        | `char *`        | `const char *`  |
|                 | `concat(long long num)`                                                          | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(unsigned long num)`                                                      | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(const char * cstr)`                                                      | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(float num)`                                                              | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(char c)`                                                                 | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(unsigned int num)`                                                       | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(unsigned char c)`                                                        | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(long num)`                                                               | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(double num)`                                                             | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(unsigned char num)`                                                      | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(const __FlashStringHelper * str)`                                        | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(const  &String str)`                                                     | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(unsigned long long num)`                                                 | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `concat(int num)`                                                                | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `end()`                                                                          | `char *`        | `char *`        | `char *`  | `char *`        | `char *`        | `const char *`  |
|                 | `endsWith(const __FlashStringHelper * suffix)`                                   | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `endsWith(const  &String suffix)`                                                | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `endsWith(const char * suffix)`                                                  | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `equals(const char * cstr)`                                                      | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `equals(const  &String s)`                                                       | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `equalsIgnoreCase(const  &String s)`                                             | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `operator[](unsigned int index)`                                                 | `char`          | `char`          | `char`    | `char`          | `char`          | `char &`        |
|                 | `reserve(unsigned int size)`                                                     | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `startsWith(const __FlashStringHelper * prefix)`                                 | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `startsWith(const char * prefix)`                                                | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `startsWith(const  &String prefix)`                                              | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | `startsWith(const  &String prefix, unsigned int offset)`                         | `unsigned char` | `unsigned char` | `bool`    | `unsigned char` | `unsigned char` | `unsigned char` |
|                 | **Limited compatibility**                                                        |                 |                 |           |                 |                 |                 |
| `void`          | `clear()`                                                                        |                 |                 |           |                 | ✔️              |                 |
| `unsigned char` | `concat(const char * cstr, unsigned int length)`                                 |                 | ✔️              | ✔️        |                 | ✔️              |                 |
| `unsigned char` | `concat(const uint8_t * cstr, unsigned int length)`                              |                 | ✔️              | ✔️        |                 | ✔️              |                 |
| `unsigned char` | `equalsConstantTime(const  &String s)`                                           |                 |                 |           |                 | ✔️              |                 |
| `bool`          | `isEmpty()`                                                                      |                 |                 |           |                 | ✔️              |                 |
| `unsigned char` | `operator!=(const char * cstr)`                                                  | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator!=(const  &String rhs)`                                                 | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator<(const  &String rhs)`                                                  | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator<=(const  &String rhs)`                                                 | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator==(const  &String rhs)`                                                 | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator==(const char * cstr)`                                                  | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator>(const  &String rhs)`                                                  | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |
| `unsigned char` | `operator>=(const  &String rhs)`                                                 | ✔️              |                 |           | ✔️              | ✔️              | ✔️              |

## UDP

|                 |                                                                                               | AVR    | SAMD   | Mbed/Nano | MegaCoreX | ESP32                | STM32  |
| --------------- | --------------------------------------------------------------------------------------------- | ------ | ------ | --------- | --------- | -------------------- | ------ |
|                 | **Fully compatible**                                                                          |        |        |           |           |                      |        |
| `int`           | `available()`                                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `uint8_t`       | `begin(uint16_t )`                                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `beginPacket(IPAddress ip, uint16_t port)`                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `beginPacket(const char * host, uint16_t port)`                                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `clearWriteError()`                                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `endPacket()`                                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const char * target)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const uint8_t * target)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char target)`                                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(uint8_t * target)`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char * target)`                                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(uint8_t * target, size_t length)`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(char * target, size_t length)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const char * target, size_t length)`                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `find(const uint8_t * target, size_t length)`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(char * target, char * terminator)`                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, const char * terminator)`                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const char * target, const char * terminator)`                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(uint8_t * target, char * terminator)`                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const uint8_t * target, size_t targetLen, const char * terminate, size_t termLen)` | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(uint8_t * target, size_t targetLen, char * terminate, size_t termLen)`             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(const char * target, size_t targetLen, const char * terminate, size_t termLen)`    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `bool`          | `findUntil(char * target, size_t targetLen, char * terminate, size_t termLen)`                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `flush()`                                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `unsigned long` | `getTimeout()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `getWriteError()`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `parsePacket()`                                                                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `peek()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const char )`                                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const __FlashStringHelper * )`                                                         | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const  &Printable )`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(char )`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(const  &String )`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(long long , int  = 10)`                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(struct tm * timeinfo, const char * format = NULL)`                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned long , int  = 10)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(int , int  = 10)`                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(double , int  = 2)`                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned int , int  = 10)`                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(long , int  = 10)`                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned long long , int  = 10)`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `print(unsigned char , int  = 10)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println()`                                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const char )`                                                                        | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(char )`                                                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const __FlashStringHelper * )`                                                       | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const  &String s)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(const  &Printable )`                                                                 | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned int , int  = 10)`                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned long , int  = 10)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(struct tm * timeinfo, const char * format = NULL)`                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned char , int  = 10)`                                                          | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(double , int  = 2)`                                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(long long , int  = 10)`                                                              | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(int , int  = 10)`                                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(long , int  = 10)`                                                                   | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `println(unsigned long long , int  = 10)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `read()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `read(unsigned char * buffer, size_t len)`                                                    | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `int`           | `read(char * buffer, size_t len)`                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytes(uint8_t * buffer, size_t length)`                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytes(char * buffer, size_t length)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, uint8_t * buffer, size_t length)`                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `readBytesUntil(char terminator, char * buffer, size_t length)`                               | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `String`        | `readString()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `String`        | `readStringUntil(char terminator)`                                                            | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `IPAddress`     | `remoteIP()`                                                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `uint16_t`      | `remotePort()`                                                                                | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `setTimeout(unsigned long timeout)`                                                           | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `void`          | `stop()`                                                                                      | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const char * str)`                                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(uint8_t )`                                                                             | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const char * buffer, size_t size)`                                                     | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
| `size_t`        | `write(const uint8_t * buffer, size_t size)`                                                  | ✔️     | ✔️     | ✔️        | ✔️        | ✔️                   | ✔️     |
|                 | **Differing return values**                                                                   |        |        |           |           |                      |        |
|                 | `availableForWrite()`                                                                         | `int`  | `int`  | `int`     | `int`     | `size_t virtual int` | `int`  |
|                 | **Limited compatibility**                                                                     |        |        |           |           |                      |        |
| `uint8_t`       | `beginMulticast(IPAddress , uint16_t )`                                                       | ✔️     | ✔️     | ✔️        |           | ✔️                   | ✔️     |
| `float`         | `parseFloat()`                                                                                |        |        |           |           | ✔️                   |        |
| `float`         | `parseFloat(LookaheadMode lookahead, char ignore = '\x01')`                                   | ✔️     | ✔️     | ✔️        | ✔️        |                      | ✔️     |
| `long`          | `parseInt()`                                                                                  |        |        |           |           | ✔️                   |        |
| `long`          | `parseInt(LookaheadMode lookahead, char ignore = '\x01')`                                     | ✔️     | ✔️     | ✔️        | ✔️        |                      | ✔️     |
| `int`           | `printf(const char * format, ... )`                                                           |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`           | `printf(const __FlashStringHelper * format, ... )`                                            |        |        |           | ✔️        | ✔️                   | ✔️     |
| `int`           | `vprintf(const char * format, va_list ap)`                                                    |        |        |           |           |                      | ✔️     |
| `int`           | `vprintf(const __FlashStringHelper * format, va_list ap)`                                     |        |        |           |           |                      | ✔️     |

## Wire

|                       |                                                                                               | AVR       | SAMD     | Mbed/Nano | MegaCoreX | ESP32                | STM32     |
| --------------------- | --------------------------------------------------------------------------------------------- | --------- | -------- | --------- | --------- | -------------------- | --------- |
|                       | **Fully compatible**                                                                          |           |          |           |           |                      |           |
| `int`                 | `available()`                                                                                 | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `beginTransmission(int address)`                                                              | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `beginTransmission(int )`                                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `beginTransmission(uint8_t address)`                                                          | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `beginTransmission(uint8_t )`                                                                 | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `beginTransmission(uint16_t address)`                                                         | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `clearWriteError()`                                                                           | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `uint8_t`             | `endTransmission()`                                                                           | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `uint8_t`             | `endTransmission(bool stopBit)`                                                               | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `uint8_t`             | `endTransmission(uint8_t )`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `uint8_t`             | `endTransmission(bool sendStop)`                                                              | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(char * target)`                                                                         | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(uint8_t * target)`                                                                      | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(const uint8_t * target)`                                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(const char * target)`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(char target)`                                                                           | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(uint8_t * target, size_t length)`                                                       | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(const uint8_t * target, size_t length)`                                                 | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(const char * target, size_t length)`                                                    | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `find(char * target, size_t length)`                                                          | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(const char * target, const char * terminator)`                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(char * target, char * terminator)`                                                 | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(const uint8_t * target, const char * terminator)`                                  | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(uint8_t * target, char * terminator)`                                              | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(uint8_t * target, size_t targetLen, char * terminate, size_t termLen)`             | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(char * target, size_t targetLen, char * terminate, size_t termLen)`                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(const char * target, size_t targetLen, const char * terminate, size_t termLen)`    | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `bool`                | `findUntil(const uint8_t * target, size_t targetLen, const char * terminate, size_t termLen)` | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `flush()`                                                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `unsigned long`       | `getTimeout()`                                                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `int`                 | `getWriteError()`                                                                             | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `onReceive(cb_function_receive_t callback)`                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `onReceive(void(*)(int) )`                                                                    | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `onRequest(cb_function_request_t callback)`                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `onRequest(void(*)(void) )`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `int`                 | `peek()`                                                                                      | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(const  &Printable )`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(const char )`                                                                          | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(const  &String )`                                                                      | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(const __FlashStringHelper * )`                                                         | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(char )`                                                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(unsigned char , int  = 10)`                                                            | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(long , int  = 10)`                                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(long long , int  = 10)`                                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(unsigned long , int  = 10)`                                                            | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(unsigned int , int  = 10)`                                                             | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(struct tm * timeinfo, const char * format = NULL)`                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(double , int  = 2)`                                                                    | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(unsigned long long , int  = 10)`                                                       | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `print(int , int  = 10)`                                                                      | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println()`                                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(const __FlashStringHelper * )`                                                       | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(const char )`                                                                        | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(const  &Printable )`                                                                 | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(const  &String s)`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(char )`                                                                              | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(long , int  = 10)`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(unsigned long , int  = 10)`                                                          | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(double , int  = 2)`                                                                  | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(unsigned int , int  = 10)`                                                           | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(long long , int  = 10)`                                                              | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(struct tm * timeinfo, const char * format = NULL)`                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(unsigned long long , int  = 10)`                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(int , int  = 10)`                                                                    | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `println(unsigned char , int  = 10)`                                                          | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `int`                 | `read()`                                                                                      | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `readBytes(char * buffer, size_t length)`                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `readBytes(uint8_t * buffer, size_t length)`                                                  | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `readBytesUntil(char terminator, char * buffer, size_t length)`                               | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `readBytesUntil(char terminator, uint8_t * buffer, size_t length)`                            | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `String`              | `readString()`                                                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `String`              | `readStringUntil(char terminator)`                                                            | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `void`                | `setTimeout(unsigned long timeout)`                                                           | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(unsigned int n)`                                                                       | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(int n)`                                                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const char * s)`                                                                       | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(uint8_t data)`                                                                         | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const char * str)`                                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(unsigned int data)`                                                                    | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(int data)`                                                                             | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(long n)`                                                                               | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(uint8_t )`                                                                             | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(unsigned long n)`                                                                      | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(unsigned long data)`                                                                   | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(long data)`                                                                            | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const uint8_t * data, int len)`                                                        | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const char * buffer, size_t size)`                                                     | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const uint8_t * buffer, size_t size)`                                                  | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const uint8_t * data, size_t quantity)`                                                | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
| `size_t`              | `write(const uint8_t * , size_t )`                                                            | ✔️        | ✔️       | ✔️        | ✔️        | ✔️                   | ✔️        |
|                       | **Differing return values**                                                                   |           |          |           |           |                      |           |
|                       | `availableForWrite()`                                                                         | `int`     | `int`    | `int`     | `int`     | `size_t virtual int` | `int`     |
|                       | `begin()`                                                                                     | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(uint8_t )`                                                                             | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(uint8_t address)`                                                                      | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(uint8_t addr)`                                                                         | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(int addr)`                                                                             | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(int )`                                                                                 | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(int address)`                                                                          | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `begin(bool generalCall = false)`                                                             | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `end()`                                                                                       | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `requestFrom(int address, int size)`                                                          | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t , uint8_t )`                                                             | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t address, uint8_t size)`                                                  | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint16_t address, uint8_t size)`                                                 | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(int address, int quantity)`                                                      | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(int , int )`                                                                     | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t address, size_t quantity)`                                               | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t address, uint8_t quantity)`                                              | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t address, size_t len)`                                                    | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t , uint8_t , uint8_t )`                                                   | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(uint16_t address, size_t size, bool sendStop)`                                   | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(uint8_t address, uint8_t size, uint8_t sendStop)`                                | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint16_t address, uint8_t size, uint8_t sendStop)`                               | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t address, size_t len, bool stopBit)`                                      | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(uint8_t address, size_t quantity, bool stopBit)`                                 | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(int , int , int )`                                                               | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(int address, int size, int sendStop)`                                            | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t , size_t , bool )`                                                       | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(uint16_t address, uint8_t size, bool sendStop)`                                  | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `uint8_t`            | `uint8_t` |
|                       | `requestFrom(uint8_t address, uint8_t quantity, uint8_t sendStop)`                            | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(int address, int quantity, int sendStop)`                                        | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `requestFrom(uint8_t address, size_t quantity, bool sendStop)`                                | `uint8_t` | `size_t` | `size_t`  | `uint8_t` | `size_t`             | `uint8_t` |
|                       | `setClock(uint32_t freq)`                                                                     | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `setClock(uint32_t )`                                                                         | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | `setClock(uint32_t frequency)`                                                                | `void`    | `void`   | `void`    | `void`    | `bool`               | `void`    |
|                       | **Limited compatibility**                                                                     |           |          |           |           |                      |           |
| `void`                | `begin(uint8_t address, bool receive_broadcast)`                                              |           | ✔️       |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(int address, bool receive_broadcast)`                                                  |           | ✔️       |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(uint32_t , uint32_t )`                                                                 |           | ✔️       |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(uint8_t address, bool enableGeneralCall)`                                              |           | ✔️       |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(uint8_t , bool generalCall = false, bool NoStretchMode = false)`                       |           |          |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(int address, bool receive_broadcast, uint8_t second_address)`                          |           |          |           | ✔️        | ✔️                   | ✔️        |
| `bool`                | `begin(int sda, int scl, uint32_t frequency = 0)`                                             |           |          |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(int , bool generalCall = false, bool NoStretchMode = false)`                           |           |          |           | ✔️        | ✔️                   | ✔️        |
| `void`                | `begin(uint8_t address, bool receive_broadcast, uint8_t second_address)`                      |           |          |           | ✔️        | ✔️                   | ✔️        |
| `bool`                | `begin(uint8_t slaveAddr, int sda, int scl, uint32_t frequency)`                              |           |          |           |           | ✔️                   |           |
| `void`                | `clearWireTimeoutFlag()`                                                                      | ✔️        |          |           |           |                      |           |
| `uint32_t`            | `getClock()`                                                                                  |           |          |           |           | ✔️                   |           |
| `I2C_HandleTypeDef *` | `getHandle()`                                                                                 |           |          |           |           |                      | ✔️        |
| `uint16_t`            | `getTimeOut()`                                                                                |           |          |           |           | ✔️                   |           |
| `bool`                | `getWireTimeoutFlag()`                                                                        | ✔️        |          |           |           |                      |           |
| `void`                | `onService()`                                                                                 |           | ✔️       |           |           |                      |           |
| `float`               | `parseFloat()`                                                                                |           |          |           |           | ✔️                   |           |
| `float`               | `parseFloat(LookaheadMode lookahead, char ignore = '\x01')`                                   | ✔️        | ✔️       | ✔️        | ✔️        |                      | ✔️        |
| `long`                | `parseInt()`                                                                                  |           |          |           |           | ✔️                   |           |
| `long`                | `parseInt(LookaheadMode lookahead, char ignore = '\x01')`                                     | ✔️        | ✔️       | ✔️        | ✔️        |                      | ✔️        |
| `bool`                | `pins(uint8_t sda_pin, uint8_t scl_pin)`                                                      |           |          |           | ✔️        |                      |           |
| `int`                 | `printf(const __FlashStringHelper * format, ... )`                                            |           |          |           | ✔️        | ✔️                   | ✔️        |
| `int`                 | `printf(const char * format, ... )`                                                           |           |          |           | ✔️        | ✔️                   | ✔️        |
| `uint8_t`             | `requestFrom(uint8_t , uint8_t , uint32_t , uint8_t , uint8_t )`                              | ✔️        |          |           |           |                      | ✔️        |
| `size_t`              | `setBufferSize(size_t bSize)`                                                                 |           |          |           |           | ✔️                   |           |
| `bool`                | `setPins(int sda, int scl)`                                                                   |           |          |           |           | ✔️                   |           |
| `void`                | `setSCL(PinName scl)`                                                                         |           |          |           |           |                      | ✔️        |
| `void`                | `setSCL(uint32_t scl)`                                                                        |           |          |           |           |                      | ✔️        |
| `void`                | `setSDA(PinName sda)`                                                                         |           |          |           |           |                      | ✔️        |
| `void`                | `setSDA(uint32_t sda)`                                                                        |           |          |           |           |                      | ✔️        |
| `void`                | `setTimeOut(uint16_t timeOutMillis)`                                                          |           |          |           |           | ✔️                   |           |
| `void`                | `setWireTimeout(uint32_t timeout = 25000, bool reset_with_timeout = false)`                   | ✔️        |          |           |           |                      |           |
| `size_t`              | `slaveWrite(const uint8_t * , size_t )`                                                       |           |          |           |           | ✔️                   |           |
| `bool`                | `swap(uint8_t state = 1)`                                                                     |           |          |           | ✔️        |                      |           |
| `int`                 | `vprintf(const char * format, va_list ap)`                                                    |           |          |           |           |                      | ✔️        |
| `int`                 | `vprintf(const __FlashStringHelper * format, va_list ap)`                                     |           |          |           |           |                      | ✔️        |

_Generated on Mon, 13 Feb 2023 11:11:12 UTC with [cpp-api-compare](https://github.com/alranel/cpp-api-compare)._

