# Real Wold Microcontrollers - Low Power Current Logger
###### This project was completed as part of Microcontrollers for the Real World at Olin College of Engineering, Fall 2020
## Description
This board is being designed to assist the [ADE Air Partners](https://www.airpartners.org/) team in evaluating how [HEPA air purifiers](https://austinair.com/shop/healthmate/) are being used by residents in East Boston. The purifiers provided the most health benefits when used 24/7 at the highest setting.  However, when deployed, purifiers are often turned to a lower setting or unplugged by users. 

Each of the purifier's 4 modes have distinct current requirements which means a current logger can provided valuable data about purifier usage.  Making the logger battery operated allows data to be logged discretely and making it low power means that data can be collected over an extended period of time. A more complete understanding of purifier usage can be extrapolated from data collected over longer periods of time
### Requirments
The low power currentl logger was designed to met the following technical requirments:
- run off of battery power for a minimum of 4 weeks.
- sense current running through a wall power cable.
- keep accurate time to sync logged data with other data streams.
- write current values and necessary time stamps to an SD card.
## Design
### Schematic
![Schematic](https://github.com/amfry/real_world_microcontrollers/blob/main/images/Schem.PNG)
### Board
### BOM & Cost
![BOM](https://github.com/amfry/real_world_microcontrollers/blob/main/images/BOM.JPG)
### Next Steps
To improve the utility of this board for it's inteded purpose further development is need.
- Display
- Power Analysis
###### Special thanks to Stan Reifiel for his guidance throughout this project.
