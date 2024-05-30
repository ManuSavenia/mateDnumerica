h=0.1;
a=1;
b=1.1;
f = inline('1/(x)');
I = (h / 2) * (feval(f, a) + feval(f, b));
%la integral posta da 0.9531
%el error es 0.095310 - 0.095455
