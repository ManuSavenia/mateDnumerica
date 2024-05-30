a2=0;
b2=1;
f2 = '@(x)sin(x)/x';
Ib1=Gauss_Legendre(f2,2,a2,b2);
Ib2=Gauss_Legendre(f2,3,a2,b2);
Ib3=Gauss_Legendre(f2,4,a2,b2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a1=0;
b1=3;
f = '@(x)((e^(x))*sin(x))/(1+x^2)';
Ia1=Gauss_Legendre(f,2,a1,b1);
Ia2=Gauss_Legendre(f,3,a1,b1);
Ia3=Gauss_Legendre(f,4,a1,b1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


