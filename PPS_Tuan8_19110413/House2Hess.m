function A = House2Hess( A )
[n,m] = size(A);
for k = 1 : n - 2
    v = A(k+1:n,k);
    alpha = -norm(v);
    if (v(1) < 0) 
        alpha = -alpha; 
    end
    v(1) = v(1) - alpha; 
    v = v / norm(v);
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - 2 * v * (v.' * A(k+1:n,k+1:n));
    A(k+1,k) = alpha;
    A(k+2:n,k) = 0;
    A(1:n,k+1:n) = A(1:n,k+1:n) - 2 * (A(1:n,k+1:n) * v) * v.';
end
end




