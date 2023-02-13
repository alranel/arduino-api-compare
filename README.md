# Arduino core API comparison

The tool contained in this repository generates a comparison of the API exposed by some of the most popular cores for Arduino, with the following goals in mind:

* assess feature parity and interoperability
* identify the best API that anyone can use to make sure their Arduino code is truly portable across different architectures
* help (and encourage) maintainers of Arduino cores to collaborate on making their implementations more interoperable

## Available reports:

* **[Core API - Interoperability Report](report-core-api.md)**
* **[WiFi API - Interoperability Report](report-wifi.md)**

## Getting started

To regenerate the comparison yourself, follow these steps:

1. Install [arduino-cli](https://github.com/arduino/arduino-cli).
2. Install Doxygen with your preferred package manager:

    ```
    apt-get install doxygen
    ```

3. Clone this repository:

    ```
    git clone https://github.com/alranel/arduino-api-compare
    cd arduino-api-compare
    ```

4. Clone the [cpp-api-compare](https://github.com/alranel/cpp-api-compare) tool inside this directory and compile it:

    ```
    git clone https://github.com/alranel/cpp-api-compare
    cd cpp-api-compare
    go build
    cd ..
    ```

5. Run this tool:

    ```
    ./arduino-api-compare.sh
    ```

    The reports in Markdown format will be created in the current directory.

## Credits and license

This tool was written by [Alessandro Ranellucci](https://github.com/alranel) and is licensed under the terms of the Affero GNU General Public License v3.
