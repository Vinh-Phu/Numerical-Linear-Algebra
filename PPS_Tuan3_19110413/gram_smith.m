function [Q,R,gan]=gram_smith(A)
[m,n]=size(A);
Q = A;
R = zeros(n);
gan=0;
for j=1:n,
    v=A(:,j);
    gan = gan+1;
    for i =1:j-1
        R(i,j)=Q(:,i)'*A(:,j);
        v=v-R(i,j)*Q(:,i);
        gan=gan+2;
    end
    R(j,j)=norm(v);
    Q(:,j)=v/R(j,j);
    gan = gan + 2;
end
end