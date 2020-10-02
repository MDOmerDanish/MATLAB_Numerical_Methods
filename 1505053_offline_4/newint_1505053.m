
function et=newint_1505053(x,y,t,r)


et=zeros(19,1) ;
for j= 2:19
    p=linspace(1,19,j);

    E=x(ceil(p));
    F=y(ceil(p));
    z=zeros(10,1) ;
    for a = 1 : 10
        z(a)=Newtonint_1505053(E,F,t(a)) ;
        if r(a)~=0
        et(j-1,1) = et(j-1,1)+abs( (r(a) -z(a)) / r(a));
        end
    end
    et(j-1,1)=et(j-1,1)/10;
        scatter(t,r);
    hold on;
    plot(t,z,'r');
    hold off;
    pause(1)

end

disp(et)
end