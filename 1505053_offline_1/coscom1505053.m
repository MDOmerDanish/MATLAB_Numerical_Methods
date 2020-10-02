p=-2*pi:0.2:2*pi;
q=cos(p);
plot(p,q)
hold on
j=my_cos1505053(p,1);
plot(p,j,'b')
k=my_cos1505053(p,3);
hold on
plot(p,k,'m')
hold on
l=my_cos1505053(p,5);
plot(p,l,'r')
hold on
m=my_cos1505053(p,20);
plot(p,m,'g')