function I = trap_1505053(func,a,b,n)
% trap: composite trapezoidal rule quadrature
% I = trap(func,a,b,n,pl,p2,...):
% composite trapezoidal rule
% input:
% func = name of function to be integrated
% a, b = integration limits
% n = number of segments 
% output:
% I = integral estimate
x = a; h = (b - a)/n;
s=func(a);
for i = 1 : n-1
x = x + h;
s = s + 2*func(x);
end
s = s + func(b);
I = (b - a) * s/(2*n);
end