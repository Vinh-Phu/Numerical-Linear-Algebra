%test gram-smith output
A=rand(3)
% tao ngau nhien ma tran 3x3 cho ma tran A vay input gram-smith co 3 vector
[Q,R,gan] = gram_smith(A) % output ma tran Q,R va so phep gan
Q*Q' %check Q da truc giao hay chua QQ* = I
Q*R %check A=QR
%voi 3 vector (n=3) so luong phep gan la 15
B=rand(4)
[Q,R,gan] = gram_smith(B)
%voi 4 vector (n=4) so luong phep gan la 24
%tong so phep gan = n + sigma_{j=1}^{n} (2(j-1)) + 2n = 3n + 2*(n*(n-1)/2)=3n+n^2-n=n^2+2n
%C=3, ta co f(n) = n^2+2n <= 3*n^2 voi n>1 nen f(n) co do phuc tap la O(n^2)