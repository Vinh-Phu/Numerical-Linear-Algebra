function [x,iter] = Inverse_power(A, ep,  numitr) 
    [m,n] = size(A);
    if m~=n
        disp('matrix A  is not square');
        return;
    end;  
    y=ones(n,1);        
    for k = 1 :  numitr
        iter = k; 
        v = y/norm(y,2);
        y = A\v;    
        th =v'*y; 
        if norm(y-th.*v,2) < ep*abs(th)
            break;
        end;
    end;
      x = y/th;

end

