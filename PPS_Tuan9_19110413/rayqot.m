function [sigma,x,iter] = rayqot(A,x0,ep,numitr) 
        [m,n] = size(A);
        if m~=n
        	disp('matrix A  is not square')  ;
        	return;
        end;
        x = x0;
        for k = 0 :  numitr
         iter = k;
         sigma = (x'*A*x)/(x'*x);
         xhat = (A-sigma * eye(n,n))\x;
         x = xhat/max(xhat);
         if  norm( (A-sigma * eye(n,n))*x )  < ep
            return;
         end;
        end;


end

