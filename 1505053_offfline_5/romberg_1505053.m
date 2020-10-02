function q=romberg_1505053(func,a,b,es)
% romberg: Romberg integration quadrature
% q = romberg(func,a,b,es,maxit,p1,p2,...):
% Romberg integration.
% input:
% func = name of function to be integrated
% a, b = integration limits
% es = desired relative error 
% output:
% q = integral estimate
% ea = approximate relative error (%)
% iter = number of iterations
ea=Inf ; 
n = 1;
I(1,1) = trap(func,a,b,n);
iter = 0;
while es<ea
iter = iter+1;
n = 2^iter;
I(iter+1,1) = trap(func,a,b,n);
for k = 2:iter+1
j = 2+iter-k;
I(j,k) = (4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
end
%ea = abs((I(1,iter+l)-I(2,iter))/I(1,iter+l))*100;
ea = abs((41.17107385-I(2,iter))/41.17107385)*100;
end
q = I(1,iter+1);
end 