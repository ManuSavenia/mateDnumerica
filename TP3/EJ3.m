x=[0,0.1,0.2,0.3,0.4,0.5];
y=[1,7,4,3,5,2];
h=0.5;
I = Trapecio(y,h);
I2= Simpson(y,h);
%no podemos usar cuadraturas gaussianas porq no tenemos la funcion definida
