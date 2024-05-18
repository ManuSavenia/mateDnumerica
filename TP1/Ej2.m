clear
x= [ 0.50 1.00 3.00 1.75 2.00 2.25 2.50]
y= [-4.50 2.48 1.79 -4.47 -6.00 -0.22 14.70]
plot(x,y,"o") %grafica solamente los puntos
grid on %grafica una grilla
hold on %mantiene los gráficos anteriores
x= [1:0.25:2.50] %define el vector x entre 1 y 2.50 con intervalos 0.1
P3 = newton(x,y) %ingresa el polinomio(Colocar los coeficientes calculados)

