clc, clear, close all                   % limpio el command windows, las variables y los gr?ficos
x=0.1;                            % abscisas de los datos
y=sin(x);                      % ordenadas de los datos
y_prima=cos(x);
figure(1)                               % creo la figura 1
plot(x,y,'*');
hold on
plot(x,y_prima,'r*');                     % grafico los puntos con astericos
grid on                                 % le pongo una grilla al gr?fico
h=0.000001;
f=(polyval(y,x+h)-polyval(y,x-h))/2*h                               % h es la distancia entre puntos
n=2;
e=(1/(2))*(-polyval(y,x))*h;
hold on
plot(x,f,'g*');
hold on
plot(x,e,'y*');
