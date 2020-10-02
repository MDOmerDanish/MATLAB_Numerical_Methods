function root = false1505053(func, lx, ux, es, imax)
 
if    func(lx)*func(ux) > 0               % if guesses do not bracket
    disp('no bracket')
    return
end
 
for i=1:1:imax
   xn = ux - (func(ux)*(lx-ux)/(func(lx)-func(ux)));
   ea = abs((ux-lx)/lx);
   
   test= func(lx)*func(xn);
   if test < 0
       ux=xn;
   end
   if test > 0
       lx=xn;
   end
   if test == 0
       ea=0;
   end
   if ea < es
       break;
   end
disp('number of iteration ')
disp(i)
   root = xn ;
end
