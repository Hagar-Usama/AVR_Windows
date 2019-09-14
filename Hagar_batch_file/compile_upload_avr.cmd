@echo off
echo converting c file into hex
SET /P chip=Enter chip used eg. atmega16  
avr-gcc -Wall -g -Os -mmcu=%chip% -o main.bin main.c
avr-objcopy -j .text -j .data -O ihex main.bin main.hex
SET /P upload=Would you like to upload the hex file (enter n to cancel) 
IF "%upload%" == "n" GOTO END
echo uploading hex file
avrdude -p %chip% -c usbasp -U flash:w:main.hex:i -F -P usb
:END
echo Copyright Hagar Usama :)
pause
