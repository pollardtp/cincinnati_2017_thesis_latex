set terminal pdf enhanced
set encoding iso_8859_1
set output "f-e2.pdf"
set pointsize 0.5
set format xy "%g"
set ylabel "Energy / kcal mol^{-1}"
set xlabel "n"
set key bottom left
set yrange [-40:0]
set style fill transparent noborder solid 0.50

plot 'f-ion.e2'  u 1:2:3 w filledcurves x1 lc rgb "#505050" title "F^{-}", \
     'f-full.e2' u 1:2:3 w filledcurves x1 lc rgb "#CCCCCC" title "F^{-}(H_{2}O)_{n}", \
     'f-ion.e2'  u 1:2:4 w filledcurves x1 lc rgb "#505050" notitle, \
     'f-full.e2' u 1:2:4 w filledcurves x1 lc rgb "#CCCCCC" notitle, \
     'f-ion.e2'  u 1:2 w linespoints lt 1 pt 4 lc 0 notitle, \
     'f-full.e2' u 1:2 w linespoints lt 1 pt 6 lc 0 notitle

