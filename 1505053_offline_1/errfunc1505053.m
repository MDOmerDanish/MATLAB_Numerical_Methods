tmp = my_cos1505053(1.5,1);
q = zeros(29,1);
p = 2:30;
for i=2:30
s=my_cos1505053(1.5,i);
q(i-1) = abs((s-tmp)/s);
tmp=s;
hold on
end
plot(p,q)