% Test Gram_smith
A=randi(2,2)
Q=gram_smith(A)
% Q*Q' = I (indentity matrix )
Q*Q'
%Test SVD 
A=[3,0;0,-2]
[U,S,V]=svd(A) %matlab function
[U1,S1,V1]=SingularValueD(A) %my function
%U1*S1*V1' = A 
U1*S1*V1'
%Test Left right singular value
LR_SVD(A)
