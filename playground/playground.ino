int raw_battery_pin = 0;
int raw_battery_voltage;

void setup() {
  Serial.begin(9600);
  pinMode(LED_BUILTIN, OUTPUT);
}
void loop() {
  upload_light_pulse(); //confirm upload
  read_raw_battery(); //print battery level to serial monitor
}

//FUNCTION DEFs
 void upload_light_pulse(){
  digitalWrite(LED_BUILTIN, HIGH);   
  delay(250);                       
  digitalWrite(LED_BUILTIN, LOW);    
  delay(1000);
  }

 void read_raw_battery(){
  float v_in = analogRead(raw_battery_pin) * (3.33 / 1024);
  Serial.print(analogRead(v_in));
  Serial.print("\n");
  }
