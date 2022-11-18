// Igor Ozga Informatyka Informatyka Ogólna Grupa 1 Kolokwium nr 1 - wersja B
clear;
clc;
clf;
disp("Igor Ozga Informatyka 1 semestr Informatyka Ogólna ")
A=[1 1/2 1/3 ; 1/2 1/3 1/4];

n=5

B=[A(1,1)^2 A(1,2)^2 ; A(2,1)^2 A(2,2)^2];
disp("Macierz B : ",B)

a=1;
b=2*a+1;
c=2*b+1;
d=2*c+1;
e=2*d+1;
disp(a,b,c,d,e)

//n = 5;
//for i=1:n
//    z(1)=1;
//    z(i+1)=2*z(i-1)+1;
//end;

B=[1 1/2 ; 1/2 1/3];
disp("Macierz B zadanie 12 : ",B)
function y=det2(C)
    y=C(1,1)*C(2,2)-C(1,2)*C(2,1);
endfunction

x=det2(B);
disp("Wyznacznik macierzy B zadanie 12 = ",x)

function y=f(x);
    y=ln*(sin^2*(x)+0.1);
endfunction;

function y=g(x);
    if x<=0 then
        y=exp(x);
    else
        y=ln(x);
    end
endfunction;

l=(1)-5;
p=(n+1)+15;
lp=200;
tw=linspace(l,p,lp)';
for i=1:lp;
    fw(i)=f(tw(i));
end;

