clear
xa= [ -5 0 5]
ya= [ 0.0769 2.0000 0.0769]
xb= [ -5 -2.5 0 2.5 5]
yb= [ 0.0769 0.2758 2.0000 0.2758 0.0769]

Pa = ilagrange(xa,ya) %ingresa el polinomio(Colocar los coeficientes calculados)
hold on
Pb = ilagrange(xb,yb) %ingresa el polinomio(Colocar los coeficientes calculados)
f = @(x) 2./(1+x.^2);
plot(xb,f(xb),'b')
