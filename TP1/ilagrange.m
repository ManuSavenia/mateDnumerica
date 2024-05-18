function[coef]=ilagrange(x,y)
N=length(x);
L=zeros(N,N)

for k=1:N
    Lk=1;
    for j=1:N
        if(j!=k)
            Lk=conv(Lk,[1 -x(j)])/(x(k)-x(j));
        end
    end
    L(k,:)=Lk;
end

Pn=0;
for i=1:N
    Pn=Pn+y(i)*L(i,:);
end
coef=Pn;


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
title('Metodo de Lagrange')

end
