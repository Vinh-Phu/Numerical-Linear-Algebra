%test gram-smith output mxm
A=rand(3)
[Q,R] = msg(A) % output ma tran Q,R
Q*R %check A=QR
%test gram-smith output mxn
B=rand(3,2)
[Q,R] = msg(B) % output ma tran Q,R
Q*R %check B=QR