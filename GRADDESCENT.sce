//para lambda newton--------------------------------------
function z = f(y)
    z = (y-2)^(4)-(y-2*y)^2; 
endfunction

function t =f1(y)
    h=0.01;
    t = (f(y-h) - f(y))/h;
endfunction

function p =f2(y)
    h=0.01;
    p = (2*f(y-h) - f(y))/h;
endfunction
//------------------------------------------------------
//gradiente---------------------------------------------
function y = GradF(x1,x2)
    t1 = 4*(x1-2)^(3) - 2*(x1 - 2*x2);
    t2 = -2*(x1-2*x2);
    y = [-t1,-t2];
endfunction
//------------------------------------------------------
//Lambda------------------------------------------------
function z = Lamb(x0,y,dk)
    x = x0+y*dk;
    contador = 0;
    while (contator ~= 10)
        b = b - (f1(x)/f2(x));
        contador = contador +1;
    end
     
endfunction
//-------------------------------------------------------
function q = desc(x1,x2,x0,y,dk,y1,y2)
    m = [x1,x2];
    contador = 0;
    while (contador =~3)
        pont = m + lamb(x0,y,dk)*Gradf(y1,y2);
        m = pont;
        contador = contador+1;
    end
    q = pont;
endfunction
