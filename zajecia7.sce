clear;
clc;

n=3;
lsup=100;
a=0;
b=3*%pi/2;
xw=[0;%pi/4;%pi/2;3*%pi/2]
xb=0.9*%pi/4;
r=2;
function y=f(x);
y=sin(x);
endfunction;

for i=0:n
yw(i+1)=f(xw(i+1));
end
function y=fp(x);
y=sin(x)
endfunction

function y=omega(x,n,xi);
y=1;
for i=0:n
y=y*(x-xi(i+1));
end
endfunction

function y=sup(a,b,lsupf)

xt=linspace(a,b,lsupf)';
for i=1:lsupf
fpt(i)=abs(fp(xt(i)));
end

y=max(fpt);
endfunction

function y=phi(x,j,n,xi)
for i=1:(n+1)
lt(i)=x-xi(i);
end;
lt(j+1)=1;
for i=1:(n+1)
mt(i)=x(j+1)-xi(i);
end;
mt(j+1)=1;
y=prod(lt)/prod(mt);
endfunction

fact=factorial(n+1);
omg=abs(omega(xb,n,xw));
M=sup(a,b,lsup);
err=M*omg/fact;


if err<10^(-r) then
//obliczyć i wypisać do konsoli Wn(xb)
for i=1:(n+1);
Wnt(i)=yw(i)*phi(xb,i-1,n,xw);
end;
W=sum(Wnt);
disp("W"+string(n)+"("+string(xb)+")="+string(W));
else
//Wypisać do konsoli komunikat o zbyt duzym błedzie
disp("Oszacowanie błedu interpolacji jest zbyt duże: err="+string(err));
end
