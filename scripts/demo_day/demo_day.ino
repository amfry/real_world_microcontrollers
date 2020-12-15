#include "EmonLib.h"
#include <SPI.h>
#include <SD.h>
#include <DS3231.h>
#include <Wire.h>
#include <TimeLib.h>
#include <DS1307RTC.h>

int sample_rate=5000; // Sampling rate

// Battery Protection Setup
const int raw_battery_pin = 0;

// RTC Setup
const char *monthName[12] = {
  "Jan", "Feb", "Mar", "Apr", "May", "Jun",
  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
};

tmElements_t tm;

// Current Sensor Setup
EnergyMonitor emon1;

// SD Setup
File dataFile;
const int chipSelect = 2;

void setup()
{
  Serial.begin(115200);
  
  // RTC Initalization
  bool parse=false;
  bool config=false;
  
  // get the date and time from compiler
  if (getDate(__DATE__) && getTime(__TIME__)) {
    parse = true;
    // and configure the RTC with this info
    if (RTC.write(tm)) {
      config = true;
    }
  }
    
  // Current Sensor Intialization
  emon1.current(1, 111.1); // Current: input pin, calibration.

  if (!SD.begin(chipSelect)) {
  Serial.println("initialization failed!");
  while (1);
  }
  Serial.println("initialization done.");
}

void loop()
{
double Irms = emon1.calcIrms(1480);  // Calculate Irms 
write_sd_val(Irms);
write_sd_string(",");
write_date();
write_sd_string(",");
write_time();
sd_newline();
delay(sample_rate);  
}



// SD Functions
  void write_sd_val(float val){
  dataFile.close();
  dataFile = SD.open("test.txt", FILE_WRITE);
  if (dataFile) {
    dataFile.print(val);
    dataFile.close();
  }
 }

void write_sd_datetime(int val){
  dataFile.close();
  dataFile = SD.open("test.txt", FILE_WRITE);
  if (dataFile) {
    dataFile.print(val);
    dataFile.close();
  }
}

void write_sd_string(String val){
  dataFile.close();
  dataFile = SD.open("test.txt", FILE_WRITE);
  if (dataFile) {
    Serial.println("success");
    dataFile.print(val);
    dataFile.close();
}
}

void sd_newline(void){
  dataFile.close();
  dataFile = SD.open("test.txt", FILE_WRITE);
  if (dataFile) {
    //Serial.println("success");
    dataFile.println();
    dataFile.close();
}
}

// RTC Functions
bool getTime(const char *str)
{
  int Hour, Min, Sec;
  if (sscanf(str, "%d:%d:%d", &Hour, &Min, &Sec) != 3) return false;
  tm.Hour = Hour;
  tm.Minute = Min;
  tm.Second = Sec;
  return true;
}

bool getDate(const char *str)
{
  char Month[12];
  int Day, Year;
  uint8_t monthIndex;

  if (sscanf(str, "%s %d %d", Month, &Day, &Year) != 3) return false;
  for (monthIndex = 0; monthIndex < 12; monthIndex++) {
    if (strcmp(Month, monthName[monthIndex]) == 0) break;
  }
  if (monthIndex >= 12) return false;
  tm.Day = Day;
  tm.Month = monthIndex + 1;
  tm.Year = CalendarYrToTm(Year);
  return true;
}

void write2digits(int number){
  if (number >= 0 && number < 10) {
    write_sd_string("0");
  }
  write_sd_datetime(number);
}

void write_date(void){
  write2digits(tm.Day);
  write_sd_string("-");
  write2digits(tm.Month);
  write_sd_string("-");
  write2digits(tmYearToCalendar(tm.Year));
  }

void write_time(void){
  write2digits(tm.Hour);
  write_sd_string(":");
  write2digits(tm.Minute);
  write_sd_string(":");
  write2digits(tm.Second);
  }

//Battery Functions
  float read_raw_battery(void){
  // Due to voltage divider, the raw_battery max value is 2.5
  float raw_v_val = analogRead(raw_battery_pin) * (3.6/1024);
  float scaled_v_val = (raw_v_val /(3.6/2)) * 3.3;
  return scaled_v_val;
  }
