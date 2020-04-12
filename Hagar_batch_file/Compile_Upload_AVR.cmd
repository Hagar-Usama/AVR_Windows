@echo off
echo uploading hex file
SET /P chip=Enter chip used e.g. atmega16  
avrdude -p %chip% -c usbasp -U flash:w:main.hex:i -F -P usb
echo Copyright Hagar Usama :)
pause
