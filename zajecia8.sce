clear;
clc;

//Dane testowe 1
n=7;
xw=[1;2;3;4;5;6;7;8];
xb = %pi/2;
function y=f(x);
    y=sin(x);
endfunction;

//Dane testowe 2
//n=5;
//xw=[-3;-2;-1;1;2;3];
//xb = 0
//function y=f(x)
//    y=exp(x)
//endfunction

for i=0:n
    yw(i+1)=f(xw(i+1));
end

function y=omega(x,xwf,nf);
    for i=0:nf
        wt(i+1)=x-xwf(i+1);
    end
    y=prod(wt);
endfunction;

diff=zeros(n+1,n+1);
diff(:,1)=yw;

eq=1;
h=xw(2)-xw(1);
for i=0:(n-1);
    if xw(i+2)-xw(i+1)<>h then
        //ustaw wynik na 0 i przerwij
        eq=0;
        break;
    end;
    
end;

if eq==0 then;
    //przypadek węzłów dowolnych
    for k=1:n
        for i=0:(n-k)
            diff(i+1,k+1)=(diff(i+2,k)-diff(i+1,k))/(xw(i+k+1)-xw(i));        
        end;
    end;
else
    //przypadek węzłów równoodległych
end;
