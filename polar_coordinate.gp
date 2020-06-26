set datafile separator ","
set key left top
set size ratio 1
set tics font "Times NewRoman, 12"

set polar
set angles degrees
set size square
unset border
set grid polar 10

set ytics axis in scale 1,0.5 nomirror norotate  offset character 0, 0, 0 autofreq

r=0.03
rgrid=10

set trange [0:350]
set rrange [0:r]

set xzeroaxis linetype 0 linewidth 2.000
set yzeroaxis linetype 0 linewidth 1.000

unset xtics
set label "r-label" at 0.037,0

set_label(x, text) = sprintf("set label '%s' center at (-r*1.1*sin(-%f)), (r*1.1*cos(%f))", text, x, x)

eval set_label(0, "0°")

eval set_label(30, "30°")

eval set_label(60, "60°")

eval set_label(90, "90°")

eval set_label(-90, "-90°")

eval set_label(-60, "-60°")

eval set_label(-30, "-30°")

eval set_label(120, "120°")

eval set_label(150, "150°")

eval set_label(180, "180°")

eval set_label(-120, "-120°")

eval set_label(-150, "-150°")

set terminal postscript eps color enhanced "Arial" 20
set output "polar_coordinate.eps"
plot "data.csv" using 1:2 with points pointtype 7 notitle

set terminal windows
set output