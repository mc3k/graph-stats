
#!/bin/bash

python3 temp.py 

echo "
set terminal png size 900, 300
set xdata time
set xrange [ time(0) - 86400 : time(0) ]    # 86400 sec = 1 day
set timefmt '%Y-%m-%d,%H:%M:%S'
set format x '%H:%M'
set output '/home/pi/bin/plottemp/tempplot.png'
plot '/home/pi/bin/plot-temp/tempdata.dat' using 1:2 with lines title 'CPU Temp deg C'" | gnuplot
