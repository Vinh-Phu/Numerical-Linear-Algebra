function Q = formQ( W )
    [m, n] = size(W);
    Q = eye(m,m);
    for k = 1:m
        Q(:,k) = formQx(W,Q(:,k));
    end
end

