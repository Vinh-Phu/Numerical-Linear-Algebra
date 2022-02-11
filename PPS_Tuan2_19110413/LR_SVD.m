function LR_SVD( A )
[U,S,V]=svd(A); S=diag(S); % find SVD
th=0:2*pi/256:2*pi;
dom=[cos(th); sin(th)]; ran=A*dom; % define points on unit circle and image
subplot(1,2,1)
plot(dom(1,:),dom(2,:),'.'),axis('image'),grid,hold
arrow([0,0],[V(1,1),V(2,1)])
arrow([0,0],[V(1,2),V(2,2)])
title('Right Singular Vectors')
subplot(1,2,2)
plot(ran(1,:),ran(2,:),'r.'),axis('image'),grid,hold
arrow([0,0],S(1)*[U(1,1),U(2,1)])
if (abs(S(2)) > 10e-10) % check that singular value is nonzero
arrow([0,0],S(2)*[U(1,2),U(2,2)])
end
title('Image & Left Singular Vector(s)')
end

