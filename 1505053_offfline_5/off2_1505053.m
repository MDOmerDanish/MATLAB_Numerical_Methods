ti=0 ;
tf= 4;
y0= -1;
h= 1/2 ;

ye=eulode_1505053(@fn , ti , tf , y0 , h ) ;
%[t,yrk]=secondRK(@fn , ti , tf , y0 , h , 1/2 ) ;
[t,yh]=Heun_1505053(@fn , ti , tf , y0 , h ) ;
[t,ym]=Midpoint_1505053(@fn , ti , tf , y0 , h ) ;
[t,yral]=Ralston_1505053(@fn , ti , tf , y0 , h ) ;
%disp([t,y]) ;
x=0:.5:4 ;  
yr = -1+x.^4-5*x.^2+3*x ;
plot(t,ye,'g',x,yr,'b',t,yh,'m',t,ym,'c',t,yral,'r') ; 
grid on  ;
hold on ;
legend('Euler','Analytical','Runge-Kutta','Huen','Mid','Ralston') ;
grid on  ;
hold on ;