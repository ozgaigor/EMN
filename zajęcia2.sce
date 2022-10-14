clear;
clc;
M = [2.542 2.112 ; 1.872 1.556];
E = [0.0 0.0 ; 0.0 0.0];
b = [4.653 ; 3.428];
//disp(M);

function y=wz2(C); 
    // wz2=zmienna odwoławcza
    // C=zmienna podana
    y=C(1,1)*C(2,2)-C(1,2)*C(2,1);
endfunction;

zm1 = [2];

//fun1 = wz2(M);
wz2(zm1);
//disp(fun1);
disp(ans);
