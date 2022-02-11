function x=determinant(A)
[row,col]=size(A);
if(row == col)
    if size(A) == [1 1] %if matrix A is 1x1
        x=A(1,1)
    elseif size(A) == [2 2] %if matrix A is 2x2
        x=A(1,1)*A(2,2) - A(1,2)*A(2,1);
    else %if matrix A is nxn
        x=0;
        for i=1:col
            x=x+((-1)^(1+i)*A(1,i)*determinant(A(2:col,[1:i-1 i+1:col])));
        end
    end
else
    disp('this is not square matrix');
end