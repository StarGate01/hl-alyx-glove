# Half-Life: Alyx Glove Firmware
Firmware for a [Half-Life: Alyx](https://store.steampowered.com/app/546560/HalfLife_Alyx/) inspired glove cosplay prop. Based around an Arduino.

## Setup

Clone this repository using `git clone` and open it up in the [PlatformIO IDE](https://platformio.org/).

Edit `include/hardware_config.h` if your pin layout differs.

### Exporting the Images

Use GIMP to export the `xcf` image files into `xdm` files.

### Compiling the Font

Use a tool like `bdfedit` to view or edit the font.

Install `bdfresize` from your package manager.

Clone [olikraus/u8g2](https://github.com/olikraus/u8g2) and change into the `tools/font/bdfconv` directory. Run `make` and copy or link the `bdfconv` executable to somewhere you can run it.

Change into the `res` directory of this repository. Then run `./font.sh` to pre-compile the font.

## Hardware and Software Components

 - Arduino
   - Arduino Framework
 - 8x8 mini LED matrix with MAX7219 IC
   - [wayoda/LedControl](https://platformio.org/lib/show/914/LedControl)
 - 128x64 1.3 inch OLED using hardware I2C
   - [olikraus/U8g2](https://platformio.org/lib/show/942/U8g2)
