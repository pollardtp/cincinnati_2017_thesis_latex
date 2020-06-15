set terminal postscript eps color enhanced "Helvetica" 20
set encoding iso_8859_1
set output "ani-ct.eps"
set pointsize 1.5
set format xy "%g"
set ylabel "Energy / kcal mol^{-1}"
set xlabel "n"
set key bottom left
set yrange [-6:0]

plot 'br-ion.ct'  u ($1-0.05):2 w linespoints lt 3 pt 4 lc 0 lw 1.2 notitle, \
     'br-full.ct' u ($1-0.05):2 w linespoints lt 1 pt 6 lc 0 lw 1.2 notitle, \
     'cl-ion.ct'  u ($1+0.05):2 w linespoints lt 3 pt 4 lc 1 lw 1.2 notitle, \
     'cl-full.ct' u ($1+0.05):2 w linespoints lt 1 pt 6 lc 1 lw 1.2 notitle, \
     'f-ion.ct'   u ($1+0.0):2 w linespoints lt 3 pt 4 lc 3 lw 1.6 notitle, \
     'f-full.ct'  u ($1+0.0):2 w linespoints lt 1 pt 6 lc 3 lw 1.6 notitle, \
     'br-ion.ct'  u ($1-0.05):2:3:4 w yerrorbars lt 1 pt 4 lc 0 lw 1.4 notitle, \
     'br-full.ct' u ($1-0.05):2:3:4 w yerrorbars lt 1 pt 6 lc 0 lw 1.4 notitle, \
     'cl-ion.ct'  u ($1+0.05):2:3:4 w yerrorbars lt 1 pt 4 lc 1 lw 1.4 notitle, \
     'cl-full.ct' u ($1+0.05):2:3:4 w yerrorbars lt 1 pt 6 lc 1 lw 1.4 notitle, \
     'f-ion.ct'   u ($1+0.0):2:3:4 w yerrorbars lt 1 pt 4 lc 3 lw 1.4 notitle, \
     'f-full.ct'  u ($1+0.0):2:3:4 w yerrorbars lt 1 pt 6 lc 3 lw 1.4 notitle

