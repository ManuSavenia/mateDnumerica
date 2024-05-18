clc, clear, close all                   % limpio el command windows, las variables y los gr?ficos
x=[0.8];                            % abscisas de los datos
y=cos(x);                 % ordenadas de los datos
y_prima=-sin(x);
figure(1)                               % creo la figura 1
hold on
plot(x,y_prima,'r*');                     % grafico los puntos con astericos
grid on                                 % le pongo una grilla al gr?fico
h=[10 1 0.1 0.01 0.001 0.0001];                            % h es la distancia entre puntos,para 0.01 no hay error
f=(polyval(y,x)-polyval(y,x-h))/h
n=2;
e=(1/(2))*(-polyval(y,x))*h;
hold on
plot(x,f,'b*');
hold on
plot(x,e,'y*');
