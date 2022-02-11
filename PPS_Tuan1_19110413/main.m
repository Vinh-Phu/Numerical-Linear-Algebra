%Ten: Vong Vinh Phu
%MSSV : 19110413
%Assigment : Week 1


A = symmetric(4) %function create random symmetric matrix 4x4
B = orthogonal(4) %function create random orthogonal matrix 4x4
determinant(A) % my function computing determinant
det(A) %function in matlab

%---------------Test case for orthogonal matrix----------------%
C = transpose(B)
D = inv(B)%inverse matrix equal transpose matrix
B*C % identity matrix.