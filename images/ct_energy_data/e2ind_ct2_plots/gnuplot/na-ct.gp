set terminal pdf enhanced color font "Helvetica,16"
set encoding iso_8859_1
set output "na-ct.pdf"
set pointsize 1.0
set format xy "%g"
set ylabel "Energy / kcal mol^{-1}"
set xlabel "n"
set key bottom left
set yrange [-1.0:1.5]
set style fill transparent noborder solid 0.75

plot 'na-ion.ct'  u 1:2:3 w filledcurves x1 lc rgb "#2F4F4F" title "CT^{(2)}(X<-W)", \
     'na-full.ct' u 1:2:3 w filledcurves x1 lc rgb "#66CCCC" title "CT^{(2)}(X<-W) + CT^{(2)}(W<-X)", \
     'na-ion.ct'  u 1:2:4 w filledcurves x1 lc rgb "#2F4F4F" notitle, \
     'na-full.ct' u 1:2:4 w filledcurves x1 lc rgb "#66CCCC" notitle, \
     'na-ion.ct'  u 1:2 w linespoints lt 3 pt 4 lc 0 lw 2 notitle, \
     'na-full.ct' u 1:2 w linespoints lt 1 pt 6 lc 0 lw 2 notitle, \
     'na-ion.ct'  u 1:2:3:4 w yerrorbars lt 1 pt 4 lc 0 lw 2 notitle, \
     'na-full.ct' u 1:2:3:4 w yerrorbars lt 1 pt 6 lc 0 lw 2 notitle

