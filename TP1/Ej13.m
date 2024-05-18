x = [ 0 1 2.2 3.2 4.2 5.4 6.5 7.7 8.9]
y = [ 248.75 497.51 746.25 995 1243.75 1492.5 1741.25 1990 2238.75]
plot(x,y,"o") %grafica solamente los puntos
hold on
coef=polyfit(x,y,1) %calcula los coeficientes de un polinomio de grado 1
x= [0.00:0.10:8.90] %define el vector x entre 0 y 8.9 con intervalos 0.1
P1= polyval(coef,x) %evalúa el polinomio con los coeficientes hallados
plot(x,P1,'g') %grafica el polinomio en línea verde
