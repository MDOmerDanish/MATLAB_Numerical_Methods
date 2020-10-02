function sum=my_cos1505053(x,n)
sum=0;
for i=0:(n-1)
sum =sum+((-1)^(i))*((x.^(2*i))/factorial(2*i));
end
end