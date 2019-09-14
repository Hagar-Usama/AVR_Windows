@echo off
echo converting c file into hex
SET /P chip=Enter chip used eg. atmega16  
avr-gcc -Wall -g -Os -mmcu=%chip% -o main.bin main.c
avr-objcopy -j .text -j .data -O ihex main.bin main.hex
echo Copyright Hagar Usama :)
pause
