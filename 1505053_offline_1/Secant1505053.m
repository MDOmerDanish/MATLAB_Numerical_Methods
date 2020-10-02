function root = Secant1505053(func,xrold,xr,er,maxit)
iter = 0;

while (1)

xrn = xr - ((func(xr)-(xrold-xr))/(func(xrold)-func(xr)));

iter = iter + 1;
if(xrn ~= 0), ea = abs((xrn-xr)/xrn) * 100; end
if ea <= er || iter >= maxit, break, end
xrold = xr;
xr = xrn ;
end
disp('number of iteration ')
disp(iter)
root = xrn;
end