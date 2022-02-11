function x = orthogonal( n )
    [Q,R] = qr(randn(n));
    x = Q*diag(sign(diag(R)));
end

