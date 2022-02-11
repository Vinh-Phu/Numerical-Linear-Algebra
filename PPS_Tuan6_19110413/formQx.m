function y = formQx(W, x)
    [m, n] = size(W);
    for k = n:-1:1
        x(k:m) = x(k:m)-2*W(k:m,k)*(W(k:m,k)'*x(k:m));
    end
    y = x;
end

