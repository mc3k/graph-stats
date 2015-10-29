#!/usr/bin/env python

import sys, os, logging, urllib, datetime

def fetchtemp():
	cmd = '/opt/vc/bin/vcgencmd measure_temp'
	line = os.popen(cmd).readline().strip()
	output = line.split('=')[1].split("'")[0]#+' C'
	return output 

format = "%Y-%m-%d,%H:%M:%S" 
today = datetime.datetime.today()
s = today.strftime(format)
output = s+' '+fetchtemp()+'\n'

with open('/home/pi/bin/plottemp/tempdata.dat', 'a') as f:
	f.write(output)
