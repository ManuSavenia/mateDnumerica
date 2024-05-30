% Define the function using inline
f = inline('sqrt(x)');

% Define the interval and step size
x0 = 1;
xn = 1.3;
h = 0.3;

% Apply the trapezoidal rule
I = (h / 2) * (feval(f, x0) + feval(f, xn));

% Display the result
disp(['The integral using the trapezoidal rule is: ', num2str(I)]);
