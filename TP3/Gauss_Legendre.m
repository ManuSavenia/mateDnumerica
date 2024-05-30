function Integral = Gauss_Legendre(funcion,key,a,b)

#M‚todo de Gauss - Legendre para la solucion de integrales definidas

#funcion: variable "string", alfab‚tica, que contiene la funcion a integrar.
# !!!ATENCION!!!
#Debe ser escrito como:
#                 '@(VARIABLE)EXPRESION'
#por ejempo       '@(x)x^2'
#key: 2 = dos puntos
#     3 = tres puntos
#     4 = cuatro puntos
#a: valor inicial para integrar
#b: valor final para integrar
#a y b pueden ser distintos de -1 y 1

  if (key == 2)
    z = [-0.57735026918963E+00,0.57735026918963E+00];
    w = [1.0,1.0];
  elseif (key == 3)
    z = [-0.77459666924148E+00, 0.0, 0.77459666924148E+00];
    w = [0.55555555555556E+00,0.88888888888889E+00,0.55555555555556E+00];
  elseif (key == 4)
    z = [-0.86113631159405E+00,-0.33998104358486E+00,0.33998104358486E+00,0.86113631159405E+00];
    w = [0.34785484513745E+00,0.65214515486255E+00,0.65214515486255E+00,0.34785484513745E+00];
  endif

  Integral = 0;
  for i = 1:key
    Integral = Integral + w(i)*feval(str2func(funcion), ((b-a)*z(i)+(b+a))/2);
  endfor
  Integral = Integral*(b-a)/2;
endfunction
