################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS\ESP8266mDNS.cpp 

LINK_OBJ += \
.\libraries\ESP8266mDNS\ESP8266mDNS.cpp.o 

CPP_DEPS += \
.\libraries\ESP8266mDNS\ESP8266mDNS.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries\ESP8266mDNS\ESP8266mDNS.cpp.o: C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS\ESP8266mDNS.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:/Users/HERNAN/AppData/Local/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/../../../tools/xtensa-lx106-elf-gcc/1.20.0-26-gb404fb9-2/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:/Users/HERNAN/AppData/Local/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include" "-IC:/Users/HERNAN/AppData/Local/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include" "-ID:/workspace/IoTKettle/Release/core" -c -Os -g -mlongcalls -mtext-section-literals -fno-exceptions -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -DF_CPU=80000000L -DLWIP_OPEN_SRC  -DARDUINO=10609 -DARDUINO_ESP8266_NODEMCU -DARDUINO_ARCH_ESP8266 "-DARDUINO_BOARD=\"ESP8266_NODEMCU\"" -DESP8266  -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\cores\esp8266" -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\variants\nodemcu" -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi" -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WiFi\src" -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer" -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266WebServer\src" -I"C:\Users\HERNAN\AppData\Local\Arduino15\packages\esp8266\hardware\esp8266\2.3.0\libraries\ESP8266mDNS" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<" -o "$@"  -Wall
	@echo 'Finished building: $<'
	@echo ' '


