function result = simplex(A)
[m n]=size(A);
V = zeros(m,1);
while(1)
%finding minimumth column
mn = A(1,1);
for i=2:n-1
    if A(1,i)<A(1,mn)
     mn=i;
    end 
end   
A(:,mn);
if A(1,mn)>=0 break 
end

%finding minimum value
for j=1:m
    V(j,1)= A(j,n)/A(j,mn) ; %A(j,n+1) is value
end
mn2 = 2;
for j=3:m
    if V(j,1)<V(mn2,1)
         mn2=j;
    end
end
V(mn2,1);
         %A(mn2,mn)
         %for(i=1:7)
         %A(mn2,mn)
         
         A        % Fine Till here
 
 temp = A(mn2,mn) ;  
 for k = 1:n
    A(mn2,k)= A(mn2,k)/temp ;
    %pqta = A(mn2,k)
 end
        %A
  % black box
      for i=1:m
          tmp = A(i,mn);
          for j=1:n 
            if i~=mn2
                A(i,j) = A(i,j)- tmp*A(mn2,j);
                
            end
          end
      end
end   % ending while
 A
 result = A(1,n) ;
end
     