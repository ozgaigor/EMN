clear;
clc;
//clf;
n = 8;
for i = 0:n;
    xw(i+1) = -6 + 2*i;
end;
function y=f(x);
    y=x*sin(x);
endfunction;
for i = 0:n;
    yw(i+1)=f(xw(i+1));
end;

X=ones(n+1,1);
X(:,2)=xw;
for j = 2:(n+1);
    X(:,j)=X(:,j-1).*xw;
end;
aw=X\yw
