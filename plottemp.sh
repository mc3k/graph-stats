#!/bin/bash
echo "set terminal png size 900, 300
#set datafile separator ' '
set xdata time
set xrange [ time(0) - 86400 : time(0) ]    # 86400 sec = 1 day
set timefmt '%Y-%m-%d,%H:%M:%S'
set format x '%H:%M'
set output 'plottemp.png'
plot 'tempdata.dat' using 1:2 with lines" | gnuplot
