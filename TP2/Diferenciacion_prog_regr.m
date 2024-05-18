clc, clear, close all                   % limpio el command windows, las variables y los gr?ficos
x=0.1;                            % abscisas de los datos
y=sin(x);                      % ordenadas de los datos
figure(1)                               % creo la figura 1
plot(x,y,'*')                           % grafico los puntos con astericos
grid on                                 % le pongo una grilla al gr?fico
h=10;                                 % h es la distancia entre puntos

%% Diferenciacion progresiva
% deriv_prog=zeros(1,13);               % como en la linea siguiente resuelvo la derivada directamente
                                        % en la definici?n del vector, no hace falta inicializarlo
deriv_prog=[diff(y)/h (y(2)-y(1))/h]; % reemplazo los 13 ceros por las derivadas progresivas
                                        % salvo la ?ltima que es regresiva
figure(2)                               % creo la figura 2
plot(x,deriv_prog,'*')                  % grafico las derivadas progresivas con asteriscos
hold on, grid on                        % mantengo la gr?fica de la figura 2
                                        % y le agrego una grilla

%% Diferenciacion regresiva
% deriv_regr=zeros(1,13);               % como en la linea siguiente resuelvo la derivada directamente
                                        % en la definici?n del vector, no hace falta inicializarlo
eriv_regr=zeros(1,13);                  % inicializo un vector de 13 elementos con ceros
deriv_regr=[(y(2)-y(1))/h diff(y)/h];   % reemplazo los 13 ceros por las derivadas regresivas
                                        % salvo la primera que es progresiva
figure(2)                               % vuelvo a graficar sobre la figura 2
plot(x,deriv_regr,'*')                  % grafico las derivadas regresivas con asteriscos

%% Derivada real`
xt=0.1;                           % defino un vector de abscisas con paso chiquito
                                        % para graficar una se?al 'continua' y que se vea
                                        % fluida
y_prima=cos(xt);                  % evaluo esos xt en la derivada anal?tica
figure(2)                               % vuelvo a graficar sobre la figura 2
plot(xt,y_prima)                        % grafico la derivada anal?tica con lineas llenas
