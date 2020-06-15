set terminal postscript eps color enhanced "Helvetica" 20
set encoding iso_8859_1
set output "cat-ct.eps"
set pointsize 1.5
set format xy "%g"
set ylabel "Energy / kcal mol^{-1}"
set xlabel "n"
set key bottom left
set yrange [-2:2.5]

plot 'k-ion.ct'  u ($1-0.05):2 w linespoints lt 3 pt 4 lc 0 lw 1.2 title "CT^{2}(K<-W)", \
     'k-full.ct' u ($1-0.05):2 w linespoints lt 1 pt 6 lc 0 lw 1.2 title "CT^{2}(K<-W) + CT^{2}(W<-K)", \
     'na-ion.ct'  u ($1+0.05):2 w linespoints lt 3 pt 4 lc 1 lw 1.2 title "CT^{2}(Na<-W)", \
     'na-full.ct' u ($1+0.05):2 w linespoints lt 1 pt 6 lc 1 lw 1.2 title "CT^{2}(Na<-W) + CT^{2}(W<-Na)", \
     'li-ion.ct'   u ($1+0.0):2 w linespoints lt 3 pt 4 lc 3 lw 1.6 title "CT^{2}(Li<-W)", \
     'li-full.ct'  u ($1+0.0):2 w linespoints lt 1 pt 6 lc 3 lw 1.6 title "CT^{2}(Li<-W) + CT^{2}(W<-Li)", \
     'k-ion.ct'  u ($1-0.05):2:3:4 w yerrorbars lt 1 pt 4 lc 0 lw 1.4 notitle, \
     'k-full.ct' u ($1-0.05):2:3:4 w yerrorbars lt 1 pt 6 lc 0 lw 1.4 notitle, \
     'na-ion.ct'  u ($1+0.05):2:3:4 w yerrorbars lt 1 pt 4 lc 1 lw 1.4 notitle, \
     'na-full.ct' u ($1+0.05):2:3:4 w yerrorbars lt 1 pt 6 lc 1 lw 1.4 notitle, \
     'li-ion.ct'   u ($1+0.0):2:3:4 w yerrorbars lt 1 pt 4 lc 3 lw 1.4 notitle, \
     'li-full.ct'  u ($1+0.0):2:3:4 w yerrorbars lt 1 pt 6 lc 3 lw 1.4 notitle

