#!/usr/bin/env python2

import serial
ser = serial.Serial('/dev/ttyUSB2', 9600, timeout=0)

while 1:
    inn = input('Servoen skal til: ')
    if inn > 0:
        ser.write(chr(131))
        ser.write(chr(inn))
    for line in ser.readlines():
        print line,
