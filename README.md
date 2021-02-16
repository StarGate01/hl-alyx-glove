# Half-Life: Alyx Glove - Firmware and Hardware
Firmware and Hardware for a [Half-Life: Alyx](https://store.steampowered.com/app/546560/HalfLife_Alyx/) inspired glove cosplay prop. Based around an ATMega328p / Arduino Uno.

Check out the [images](https://github.com/StarGate01/hl-alyx-glove/tree/master/images)!

## State of the Project

<details>
  <summary>PCB Revision 1: Proof of concept - Completed</summary>

  - [x] OLED rendering of resin count and sprite
  - [x] Display animations on 3 LED matrices
  - [x] Drive 2 green status LEDs
  - [x] Drive check engine LED
  - [x] Evaluate barebone IC
  - [x] Evaluate display drivers
  - [x] Manufacture board
  - [x] Validate board

</details>
 
<details>
  <summary>PCB Revision 2: Refinement - Completed</summary>

  - [x] Add buttons
  - [x] Add 0.1uF caps to driver ICs
  - [x] Larger power traces
  - [x] Re-think trace width in general
  - [x] Properly lay out mounting holes
  - [x] Optimize VCC trace
  - [x] Move OLED connector
  - [x] Optimize board size
  - [x] Think about inertial measurement unit
  - [x] Drive decorative yellow LEDs
  - [x] Improve ground plane stitching
  - [x] Add source info to silkscreen
  - [x] Add component orientation to  silkscreen
  - [x] Evaluate acceleration sensor
  - [x] Manufacture board
  - [x] Validate board

</details>

<details>
  <summary>Firmware Revision 1: Tests - Completed</summary>

  - [x] Test sensor
  - [x] Display resin count
  - [x] Display blinking hearts
  - [x] Flash LEDs
  - [x] Read buttons

</details>

<details>
  <summary>Firmware Revision 2: Proper functionality - In Progress</summary>

  - [ ] Wrist flick detection
  - [ ] State management w/ buttons
  - [ ] Aux LED control
  - [ ] Adjustable amount of hearts

</details>

<details>
  <summary>Power System - Not Started</summary>

  - [ ] Battery selection
  - [ ] Charging management

</details>

<details>
  <summary>CAD and 3D-Printing - In Progress</summary>

  - [x] Acquire gloves
  - [x] Export models from game
  - [ ] Design decorative parts
  - [ ] Adapt parts to 3D-Printing
  - [ ] Think about paint and mounting

</details>


## Software

Clone this repository using `git clone` and open it up in the [PlatformIO IDE](https://platformio.org/).

Edit `include/hardware_config.h` if your pin layout differs.

Finally, use PlatformIO to compile and upload the program. A debug configuration for the Arduino Uno (`uno`) and a release configuration for the PCB (`barebone`) are available. To program the barebone chip, you need a ISP programmer such as a AVRISP, USBasp or Arduino as ISP.

### Compiling Modified Sprites

Use GIMP to export the `xcf` image files into `xdm` files. Make sure to declare the buffers as `PROGMEM`.

### Compiling Modified Fonts

Use a tool like `bdfedit` to view or edit the font.

Install `bdfresize` from your package manager.

Clone [olikraus/u8g2](https://github.com/olikraus/u8g2) and change into the `tools/font/bdfconv` directory. Run `make` and copy or link the `bdfconv` executable to somewhere you can run it.

Change into the `res` directory of this repository. Then run `./font.sh` to pre-compile the font.

## Software Components

 - Arduino
   - [Arduino Framework](https://www.arduino.cc/)
 - 8x8 mini 1.9mm LED matrix with MAX7219 IC using software SPI
   - [wayoda/LedControl](https://platformio.org/lib/show/914/LedControl)
 - 128x64 1.3 inch OLED using hardware I2C
   - [olikraus/U8g2](https://platformio.org/lib/show/942/U8g2)
 - GY-61 ADXL335 Breakout
   - Analog input

## Electronics

Most parts are pretty standard, eg. THT resistors, capacitors and LEDs. Pretty much any electronics store should carry them.

The main controller is a ATMega328p, the same as the Arduino Uno uses. These ICs are cheap for what they offer and also available pretty much everywhere.

The 1.9mm LED matrices are a special part, because they are the "mini" version of the much more widely used 3.0mm/3.75mm 8x8 LED matrices. I bought them from [AliExpress](https://de.aliexpress.com/item/4000931195417.html). The OLED is a fairly standard "Arduino-type" breakout board, and commonly available in blue, yellow and white. [Amazon](https://www.amazon.com/gp/product/B07D9G11DZ) carries them, and so does [AliExpress](https://de.aliexpress.com/item/1005001355009919.html). 

The surface mount LED is a 5050 SMT LED, which is also commonly used in LED strips and can be found at many stores, for example at [Ebay](https://www.ebay.com/itm/LED-Light-SMD-SMT-0603-0805-1206-7030-3020-5730-5050-3528-335-Super-bright/302940504403).

The display drivers are MAX7219CWG ICs, available at many stores, for example [Ebay](https://www.ebay.com/itm/10-St%C3%BCcke-Maxim-MAX7219CWG-SOP-24-Led-Display-Driver-New-Ic-ln/332191432560). However, prices differ a lot depending on the retailer.

The Acceleration sensor is an ADXL335 IC on the GY-61 "Arduino-type" breakout PCB. These modules are so cheap that it is not worth the trouble of including components that can't be hand-soldered. These modules are available at Amazon/Ebay and other retailers.

### Fabricating the PCB

A [KiCad](https://kicad.org/) project is available in the `hardware` directory. It requires my [custom components](https://github.com/StarGate01/KiCadLibs).

Fabricate the PCB according to the Gerber files in `hardware/gerber` or send them to a factory. I had mine produced by [JLCPCB](https://jlcpcb.com/). All SMD components are hand-solderable using a fine tip and a steady hand.

Solder the components to the PCB according to the KiCAD schematics. Pay extra attention to the orientation of the LED displays and the display drivers ICs, check the little circle markers on the PCB. Sometimes the orientation of the LED matrices is not obvious, so just put them into the holes without soldering and tilt them to jam them, in order to make electrical contact. Then you can verify the orientation if they display correctly.

The mounting holes of the PCB and the OLED module should be on top of each other, such that the modules can be screwed together using an M3 bolt. The acceleration module can be soldered onto the PCB.

## Putting the Glove Together

The actual gloves are called "Half-Jab" by the company Highway 21. Available at motorcycle shops or Amazon/Ebay.

TODO

 - 3D-Printing
 - Print Check Engine Light
 - Paint
 - Assemble
