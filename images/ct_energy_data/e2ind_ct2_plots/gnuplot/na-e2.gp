set terminal pdf enhanced
set encoding iso_8859_1
set output "na-e2.pdf"
set pointsize 0.5
set format xy "%g"
set ylabel "Energy / kcal mol^{-1}"
set xlabel "n"
set key bottom left
set yrange [-40:0]
set style fill transparent noborder solid 0.50

plot 'na-ion.e2'  u 1:2:3 w filledcurves x1 lc rgb "#505050" title "Na^{+}", \
     'na-full.e2' u 1:2:3 w filledcurves x1 lc rgb "#CCCCCC" title "Na^{+}(H_{2}O)_{n}", \
     'na-ion.e2'  u 1:2:4 w filledcurves x1 lc rgb "#505050" notitle, \
     'na-full.e2' u 1:2:4 w filledcurves x1 lc rgb "#CCCCCC" notitle, \
     'na-ion.e2'  u 1:2 w linespoints lt 1 pt 4 lc 0 notitle, \
     'na-full.e2' u 1:2 w linespoints lt 1 pt 6 lc 0 notitle

