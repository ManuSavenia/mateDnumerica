
u=2000;
M0=150000;
q=2600;
g=9.8;
v=inline('2000*log(150000/(150000-2600*t))-9.8*t');
I = (30 / 2) * (feval(v, 0) + feval(v, 30));

