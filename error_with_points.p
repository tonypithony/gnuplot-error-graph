# gnuplot filename.p

set terminal png size 650, 450

set xrange [0.01:1]
set yrange [0:20]

set xtics nomirror
set ytics nomirror

set output 'error_5_10_optE.png'

# set title "Damping Function" 
# set title('Относительная погрешность')

set xlabel "Толщина z, мм" 
set ylabel "{/Symbol e}, %"

set label "Диапазоны измерений:" left at 0.27, 14.2 offset .5, 0
set label "L_{5%} = CD" left at 0.45, 13.2 offset .5, 0
set arrow from 0.45, 12.8 to 0.23, 3 lt -1 lw 2 #front size 10, 15

set label "L_{5%}^{opt} = AD" left at 0.54, 12.1 offset .5, 0
set arrow from 0.55, 11.55 to 0.185, 0.86 lt -1 lw 2 #front size 10, 15

set label "A" left at 0.02, -0.66
set label "B" left at 0.55, -0.66
set label "C" left at 0.22, -0.66
set label "D" left at 0.26, -0.66
set label "E" left at 0.1, -0.66

a = 0.15 
b = 0.01

c = 0.01
d = 0.005

a1 = 0.146
b1 = 0.0096
c1 = 0.002

# vertical lines
set arrow from 0.22, graph 0 to 0.22, graph 1 nohead lt 0 lw 2
set arrow from 0.26, graph 0 to 0.26, graph 1 nohead lt 0 lw 2
set arrow from 0.04, graph 0 to 0.04, graph 1 nohead lt 0 lw 2
set arrow from 0.11, graph 0 to 0.11, graph 1 nohead lt 0 lw 2
set arrow from 0.6, graph 0 to 0.6, graph 1 nohead lt 0 lw 2

plot [0:1] (a*x+b)*100 with points pt 11 ps 1 lc rgb 'black' ti 'Интерферометрия', \
(c/x + d)*100 lt 1 lw 3 lc rgb 'black' ti 'Модифицированная триангуляция', \
5 notitle lw 1 lc rgb 'black' lt 0, 10 notitle lw 1 lc rgb 'black' lt 0, \
(a1*x+b1)*100 with points pt 10 ps 1 lc rgb 'black' ti 'Интерферометрия_{opt}', \
(c1/x + d)*100 lt 0 lw 3 lc rgb 'black' ti 'Модифицированная триангуляция_{opt}'