function Integral = Trapecio(y, h)
#Funcion para calcular una integral mediante la regla de Trapecios Compuesta.
# y: vector de las ordenadas
# h: espaciamiento entre muestras
    n = length(y);
    Integral = h/2 *(y(1) + 2*sum(y(2:n-1)) + y(n));
endfunction
