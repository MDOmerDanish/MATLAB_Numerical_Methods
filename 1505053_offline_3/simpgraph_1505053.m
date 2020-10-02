function r = simpgraph(A,b)
[m n]=size(A);
[p q] = size(b);
for i=1:m
    tmp1 = b(i,1)/A(i,1);
    x = 0:0.1:tmp1;
    tmp2 = -(A(i,1)/A(i,2));
    plot(x,tmp2*x+tmp1);
    hold on ;
end

end