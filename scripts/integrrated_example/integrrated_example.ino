#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <SPI.h>
#include <SD.h>
#include <DS3231.h>

// RTC Setup
DS3231 Clock;
bool Century=false;
bool h12;
bool PM;

// SD Setup
Sd2Card card;
File dataFile;
const int chipSelect = 2;

// Display Setup
#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels
#define OLED_RESET     3 // Reset pin #
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// Battery Protection Setup
const int raw_battery_pin = 0;

// Current Sensor setup
//#include "EmonLib.h"
int current_pin = 1;

void setup() {
  // Display initialization 
  if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3C for 128x32
    for(;;); // Don't proceed, loop forever
  }
  display.display();
  delay(500); 
  display.clearDisplay();
  draw_single_entry("AIR PARTNERS",500, 1);
  
  // Start-up Checks
  draw_single_entry("Bat. Voltage: " + String(read_raw_battery()),2000,1); //Show Battery level
  draw_single_entry("Current Time:" + String(get_time_now()),2000,1);// Current Time
  draw_single_entry("SD Status:" + String(sdcard_status()),2000,1);// SD status

  //delay(3000);
  // Init Sensor
  //emon1.current(current_pin, 111.1);
}

void loop() {
   draw_single_entry("SD Status:" + String(sdcard_status()),2000,1);// SD status
  delay(1000);
  //write_sd(get_current_val());
  
}
//// Current Sensor Functions
float get_current_val(void){
  return analogRead(current_pin);
  }

// Display Functions
void draw_single_entry(String value, int hold_time, int scale){
  display.clearDisplay();
  display.setTextSize(scale);             // Normal 1:1 pixel scale
  display.setTextColor(SSD1306_WHITE);        // Draw white text
  display.setCursor(0,0);             // Start at top-left corner
  display.println(value);
  display.display();
  delay(hold_time);
  display.clearDisplay();
  }

//Battery Functions
  float read_raw_battery(void){
  // Due to voltage divider, the raw_battery max value is 2.5
  float raw_v_val = analogRead(raw_battery_pin) * (3.6/1024);
  float scaled_v_val = (raw_v_val /(3.6/2)) * 3.3;
  return scaled_v_val;
  }

// SD Functions
  int sdcard_status(void){
  int val;
  if (!card.init(SPI_HALF_SPEED, chipSelect)&& (!SD.begin(chipSelect))) {
    val = 0;
  } else {
    val = 1;
  }
  return val;
  }

 void write_sd(float val){
  dataFile.close();
  dataFile = SD.open("test.txt", FILE_WRITE);
  if (dataFile) {
    //draw_single_entry("Sucess!",500,1);
    dataFile.println(String(val));
    dataFile.close();
  }
  else{
    //draw_single_entry("Write Fail!",500,1);
    }
 }

// RTC Functions
String get_time_now(void){
  int pre;
  if (Century) {      // Won't need this for 89 years.
    pre = 1;
  } else {
    pre = 0;}
  int year_clk = Clock.getYear();
  int month_clk = Clock.getMonth(Century);
  int day_clk = Clock.getDate();
  int hour_clk = Clock.getHour(h12, PM);
  int min_clk = Clock.getMinute();
  int sec_clk = Clock.getSecond();
  return  "2" + String(pre)+ String(year_clk,DEC) + " " + String(month_clk,DEC); /*+ " " + String(day_clk,DEC)
  + ": " + String(hour_clk,DEC)+ " " + String(min_clk,DEC)+ " " + String(sec_clk,DEC); */
 }
