% BT a
A = zeros(15,40);
for i=2:9
    A(i,2)=1;
    A(i,3)=1;
    A(i,6)=1;
    A(i,7)=1;
end
for i=2:7
    A(5,i)=1;
    A(6,i)=1;
end
for i=10:15
    A(3,i)=1;
    A(4,i)=1;
    A(6,i)=1;
    A(7,i)=1;
    A(9,i)=1;
    A(10,i)= 1;
end
for i=3:10
    A(i,10)=1;
    A(i,11)=1;
end
for i=4:10
    A(i,18)=1;
    A(i,19)=1;
end
for i=18:23
    A(10,i)=1;
    A(11,i)=1;
end
for i=5:11
    A(i,26)=1;
    A(i,27)=1;
end
for i=26:31
    A(11,i)=1;
    A(12,i)=1;
end
for i=6:13 
    A(i,34)=1;
    A(i,35)=1;
    A(i,38)=1;
    A(i,39)=1;
end
for i=34:39
    A(6,i)=1;
    A(7,i)=1;
    A(12,i)=1;
    A(13,i)=1;
end
spy(A)
% BT b
[U,S,V] = svd(A)
plot(U,'o')
hold on
plot(S,'o')
hold on
plot(V,'o')
hold off 
subplot (3,1,1)
semilogy(U)
subplot (3,1,2)
semilogy(S,'o')
subplot (3,1,3)
semilogy(V)
rank(A)