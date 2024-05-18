function[coef]=newton(x,y)
N=length(x);
M(:,1)=y;

for k=2:N
  for i=1:N-k+1
    M(i,k) = (M(i+1,k-1) - M(i,k-1)) / (x(i+k-1) - x(i));
  end
end
b=M(1,:);
b
Pn = 0;
pol = 1;
for i = 1:N
  Pn = Pn + b(i) * [zeros(1,N-i) pol];
  pol = conv(pol, [1, -x(i)]);
end
coef = Pn;


%A partir de aca es grafico

xmin=min(x); xmax=max(x);
xp=linspace(xmin,xmax);
yp=polyval(coef,xp);

figure(1)
plot(xp,yp,'-k','LineWidth', 2)
hold on
plot(x,y,'or','MarkerFaceColor','r','MarkerSize',10)
ax = gca(); set(ax, 'fontsize', 17);
xlabel 'X', ylabel 'Y'
grid on
legend('Polinomio Interpolante', 'Datos')
title('Metodo de Newton')

end
