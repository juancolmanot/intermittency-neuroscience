#!/usr/bin/gnuplot

set terminal pdfcairo size 12,6 font 'Arial, 21'

set output "plots/plot_two_dimensional_map_xn+14.pdf"

set key font ',12'
set ytics font ',12'
set xtics font ',12'
set autoscale

set multiplot layout 1,2 rowsfirst

set ylabel 'x_{n+14}'
set xlabel 'x_n'
set autoscale

p 'datafiles/two_dimensional_map_xn+14.dat' u 1:3 notitle w p pt 6 ps 0.001 lc rgb 'black', \
    x w l lw 1 lc rgb 'red'

set ylabel 'y_{n+14}'
set xlabel 'y_n'

set autoscale
set xrange[0.2:1]
set yrange[0.2:1]

p 'datafiles/two_dimensional_map_xn+14.dat' u 2:4 notitle w p pt 6 ps 0.001 lc rgb 'black', \
    x w l lw 1 lc rgb 'red'

unset multiplot
unset output
unset terminal

set terminal pdfcairo size 12,6 font 'Arial, 21'

set output "plots/plot_two_dimensional_map_xn+14_merged.pdf"

set key font ',12'
set ytics font ',12'
set xtics font ',12'
set autoscale

set multiplot layout 1,2 rowsfirst

set ylabel 'x_{n+14}, y_{n+14}'
set xlabel 'x_n, y_n'
set autoscale
set xrange[0.2:1]
set yrange[0.2:1]

p 'datafiles/two_dimensional_map_xn+14.dat' u 1:3 notitle w p pt 6 ps 0.001 lc rgb 'black', \
  'datafiles/two_dimensional_map_xn+14.dat' u 2:4 notitle w p pt 6 ps 0.001 lc rgb 'black', \
  x w l lw 1 lc rgb 'red'

set ylabel 'y_{n+14}'
set xlabel 'y_n'

set autoscale
set xrange[0.6:0.62]
set yrange[0.6:0.62]

p 'datafiles/two_dimensional_map_xn+14.dat' u 2:4 notitle w p pt 6 ps 0.001 lc rgb 'black', \
    x w l lw 1 lc rgb 'red'

unset multiplot
unset output
unset terminal
