# Real Wold Microcontrollers - Low Power Current Logger
###### This project was completed as part of Microcontrollers for the Real World at Olin College of Engineering, Fall 2020
## Description
This board was designed to assist the [ADE Air Partners](https://www.airpartners.org/) team in evaluating how [HEPA air purifiers](https://austinair.com/shop/healthmate/) are being used by residents in East Boston. The purifiers provided the most health benefits when used 24/7 at the highest setting.  However, when deployed, purifiers are often turned to a lower setting or unplugged by users. To evalute user behavior, the board will log current continously over an extended duration.

The purifier has 4 modes have distinct current requirements, making a current logger a simple way to gain valuable data about purifier usage.  The logger was designed to be battery operated to allow data to be logged discretely.  making it low power means that data can be collected over an extended period of time. During devlopment of the board, when there was no immediate access to an air purifer, the board was tested on a standard hair dryer. The data from a test with the hair dryer can be seen below.  
![Plot](https://github.com/amfry/real_world_microcontrollers/blob/main/images/Current%20(Amps)%20vs.%20Time.png)  
### Requirments
The low power currentl logger was designed to met the following technical requirments:
- Run off of battery power for a minimum of 4 weeks.
- Sense current running through a wall power cable.
- Keep accurate time to sync logged data with other data streams.
- Write current values and necessary time stamps to an SD card.
## Design
### Schematic
The board has 7 major components:
- [Processor](https://www.sparkfun.com/products/11114):
- [RTC](https://www.adafruit.com/product/3013):
- [SD Card module](https://www.sparkfun.com/products/544) :
- [Display module](https://www.adafruit.com/product/4440#technical-details):
- [Buck/Boost Converter](https://www.sparkfun.com/products/15208)
- [Current sensor](https://learn.openenergymonitor.org/electricity-monitoring/ct-sensors/yhdc-sct-013-000-ct-sensor-report)

The schematic and board designed were completed in KiCAD and can be see [here](https://github.com/amfry/real_world_microcontrollers/blob/main/hardware/low_current_data_logger.zip).  
### Board
Below is the populated final version of the low power current logger. The board was manufactured by [JLCPCB](https://jlcpcb.com/) and was assembled with hand soldereding.  The board is 2-layer with all THT componenets. The board layout and assembly can be seen below.  

![PCB](https://github.com/amfry/real_world_microcontrollers/blob/main/images/layout.PNG)
![PCB](https://github.com/amfry/real_world_microcontrollers/blob/main/images/board_rotated.jpg)  

### BOM & Cost
A motivation for designing this board for the [ADE Air Partners](https://www.airpartners.org/) team was to create a lower cost alternative to the current products used for current data logging. Products that can do that such as a [HOBO data logger](https://www.onsetcomp.com/products/data-loggers/ux120-006m/), but these products are bulky, expensive (> $200 each), and generally designed for industrial applications. This means that the baord developed could save the team over a 100 dollars for each logging unit. Additional cost reduction could be implemnted such as transition to using just the processor chip in the arduino mini pro and manufacturing the board in bulk.
![BOM](https://github.com/amfry/real_world_microcontrollers/blob/main/images/BOM.JPG)
### Next Steps
To improve the utility of this board for it's inteded purpose further development is need.
- User interface: The board has a display and push button user interface that are not currently being used. In doing software development, the large size of the display library made the display difficult to integrate with other core functionality. More research and development into how to implemnt display functionality with low memory avaliable is needed.
- Low power improvments: While the board could run for X many amount of time with the current battery pack and software, extending the battery life of the board would allow more holistic data to be collected on air purifer usage. Implemnting "sleep mode" in between data samples and expanding the battery pack should be complete to imporve the board.
###### Special thanks to Stan Reifiel for his guidance throughout this project.
