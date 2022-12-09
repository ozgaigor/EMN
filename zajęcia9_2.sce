clear;
clc;

h=0.001;
nmax=50;
r=4;
a=-2;
b=0.5;

function y=f(x);
    y=(x^2-3)*sin(x);
endfunction;

function y=fp(x,h);
    y=(f(x+h)-f(x))/h;
endfunction;

function y=fpp(x,h);
    y=(fp(x+h,h)-fp(x,h))/h;
endfunction;

//sztuczne rozwiązanie początkowe 
wi=1;
xr(wi)=a;
kw=0;

if f(a)*f(b)<0 then
    //Spełnione założenia metody połowienia.
    if ~(fp(a,h)*fp(b,h)>0 && fpp(a,h)*fpp(b,h)>0) then 
            //Metoda połowienia
    end;
    // warunkowa realizacja merody regula falsi
else
    //Założenia metody połowienia nie są spełnione.
    kw=3;
end;
