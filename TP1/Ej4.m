clear
x= [ 0.5000 1.0000 1.3000 1.5000 1.9000]
y= [ 0.3513 1.2817 1.5307 1.5183 0.9141]

P = 4*x-e.^x
plot(x,P,'b')
hold on
P3 = ilagrange(x,y) %ingresa el polinomio(Colocar los coeficientes calculados)

