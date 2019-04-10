function y=f(x)
    y=x^3+x^2-3*x  //função
endfunction

function y1 = primeiraDerivada(x)
    h= 0.0001;
    y1 = (f(x+h)-f(x))/h; //definição por limite
endfunction

function y2 = segundaDerivada(x)
    h = 0.0001
    y2 = (f(x+h)-2*f(x)+f(x-h))/h^2; //definição por limite
endfunction

function newton=newt(x0,n,e)
    z  = f(x0)
    z1 = primeiraDerivada(x0)
    z2 = segundaDerivada(x0)
        i=0
        j=1
        x1 = x0 - (z1/z2)
        if (x1-x0 < 0)then
                h= (x1-x0)*-1
        else 
            h= (x1-x0)
        end
        while(h > e && i<n)
            mprintf("\ncontador %d",j)
            x0=x1
            x1 = x1 - (z1/z2)
            j=j+1
            i= i+1
            if (x1-x0 < 0)then
                h= (x1-x0)*-1
            else 
            h= (x1-x0)
            end
        end
        mprintf("\nmet newton x = %e\n",x1)
        newton = 0
endfunction
