clear;
clc;
//===================== Dane ======================

//M = [2.541 2.112 ; 1.872 1.556];
M = [1 2 ; 1 1];
E = [0.0 0.0 ; 0.0 0.0];
//E = [0.001 0.001 ; -0.001 -0.002];

b = [4.653 ; 3.428];

//============== Funkcja Wyznacznika ==============

function y=wz2(C); 
    // wz2=zmienna odwoławcza
    // C=zmienna podana
    y=C(1,1)*C(2,2)-C(1,2)*C(2,1);
endfunction;

//================= Funkcja Sumy ==================

function C=msum(A,B);
    //C(1,1) = A(1,1)+B(1,1);
    //C(1,2) = A(1,2)+B(1,2);
    //C(2,1) = A(2,1)+B(2,1);
    //C(2,2) = A(2,2)+B(2,2);
    C=A+B;
endfunction;

//=============== Funkcja Cramera =================

function Wk = Cmk(A,w,k);
    Wk = A;
    Wk(:,k) = w;
endfunction;

ME = msum(M,E);
dME = wz2(ME);
if dME<>0 then
    //Metoda Cramera
    x(1,1) = wz2(Cmk(ME,b,1))/dME;
    x(2,1) = wz2(Cmk(ME,b,2))/dME;
    disp("x = ",x);
else
    //Brak rozwiązań
    disp("Wyznacznik główny zerowy - Brak rozwiązań!");
end

//=============== Wywołania Funkcji ===============

//fun1 = msum(M,E);
//disp(fun1);

        //======== Cramer Test =========
        //fun2 = wz2(M);
        //disp(fun2);
        //cram1 = Cmk(M,b,1);
        //cram2 = Cmk(M,b,2);
        //wc1 = wz2(cram1);
        //wc2 = wz2(cram2);
        //x1 = wc1/fun2;
        //y1 = wc2/fun2;
        //disp(x1);
        //disp(y1);

