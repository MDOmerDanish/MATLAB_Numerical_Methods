function [t,y] = eulode_1505053(dydt,ti,tf,y0,h)
% eulode: Euler ODE solver
% [t,y] = eulode(dydt,tspan,y0,h)
% uses Euler's method to integrate an ODE
% input:
% dydt = name of the M-file that evaluates the ODE
% tspan = [ti, tf] where ti and tf = initial and
% final values of independent variable
% y0 = initial value of dependent variable
% h = step size
% output:
% t = vector of independent variable
% y = vector of solution for dependent variable
t = (ti:h:tf)';
n = length(t);
% if necessary, add an additional value of t
% so that range goes from t = ti to tf
if t(n)<tf
t(n+1) = tf;
n = n+1;
end
y = y0*ones(n,1); %preallocate y to improve efficiency
for i = 1:n-1 %implement Euler's method
y(i+1) = y(i) + dydt(t(i),y(i))*h;
end