#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

const char* ssid = "Lu_Net";
const char* password = "gilar1234";
bool ledState=false;
ESP8266WebServer server(8080);

const int led = 13;

void handleRoot() {
  char temp[500];

snprintf ( temp, 500,

"<html>\
    <head>\
      <meta http-equiv='refresh' content='5'/>\
      <title>ESP8266 Demo</title>\
      <style>\
        body { background-color: #cccccc; font-family: Arial, Helvetica, Sans-Serif; Color: #000088; }\
      </style>\
    </head>\
    <body>\
      <h1>Hello from Schwappen!</h1>\
      <h1>Led is now: %s</h1>\
   <p><a href=\"/LED_ON\"\"><button>Turn On </button></a><a href=\"/LED_OFF\"\"><button>Turn Off </button></a><br /></p>\
      </body>\
  </html>",

   ledState?"On":"Off"
  );
    server.send(200, "text/html", temp);
}

void setup(void){
  pinMode(led, OUTPUT);
  digitalWrite(led, 0);
  Serial.begin(115200);
  WiFi.begin(ssid, password);
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.on("/inline", [](){
    server.send(200, "text/plain", "this works as well");
  });
  server.on("/LED_ON", [](){
    digitalWrite(led, HIGH);
    ledState=true;
    handleRoot();
  });
  server.on("/LED_OFF", [](){
    digitalWrite(led, LOW);
    ledState=false;
    handleRoot();
  });
  server.onNotFound(handleRoot);

  server.begin();
  Serial.println("HTTP server started");
}

void loop(void){
  server.handleClient();
  delay(1);
}
