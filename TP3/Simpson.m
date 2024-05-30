function Integral = Simpson(y,h)
#Funcion para calcular una integral mediante la regla de Simpson Compuesta.
# y: vector de las ordenadas
# h: espaciamiento entre muestras
    n = length(y);
    if (rem(n,2) == 0)
        Integral = 'El metodo de Simpson no se puede realizar con cantidad de elementos pares';
    else
    Integral = h/3 * (y(1) + 4*sum(y(2:2:n-1)) + 2*sum(y(3:2:n-2)) + y(n) );
    endif
endfunction
