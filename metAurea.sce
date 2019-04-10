function y = func(x)
    y=x^2+16*x+15   //função
endfunction

function Aurea = au(inicial,final)
    condicao = 10;
    while (condicao ~= 0)
         d = (final - inicial)*0.618
         x1 = final-d
         x2 = inicial-d
         y1 = func(x1)
         y2 = func(x2)
         if(y1<y2)then
             final = x2
         else
             inicial = x1
         end
         condicao = condicao -1
     end
     
     mprintf("valor de x:\n")
     Aurea = (x2-x1)/2
     
     
endfunction
