A=[-125, 25, -5, 1, 0, 0, 0, 0;
         0, 0, 0, 1, 0, 0, 0, 0;
         0, 0, 0, 0, 0, 0, 0, 1;
         0, 0, 0, 0, 125, 25, 5, 1;
         0, 0, 1, 0, 0, 0, -1, 0;
         0, 1, 0, 0, 0, -1, 0, 0;
         -30, 2, 0, 0, 0 , 0, 0, 0;
         0, 0, 0, 0, 30, 2, 0, 0]

b=[2/25;2;2;2/25;0;0;0;0]

X=A\b

xi=4

% Coeficientes de los polinomios
coef_p1 = X(1:4);
coef_p2 = X(5:8);

% Interpolo el valor
yi=polyval(coef_p2, xi)

% Definir la funcion a trozos
S = @(x) (x >= -5 & x < 0) .* polyval(coef_p1, x) + (x >= 0 & x <= 5) .* polyval(coef_p2, x);

% Funcion a interpolar
f = @(x) 2./(1+x.^2);


% Grafico
X_plot = -5:0.01:5;
plot(X_plot, f(X_plot), 'b');
hold on;
plot(X_plot, S(X_plot), 'r');
