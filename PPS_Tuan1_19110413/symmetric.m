function matrix = generate_random_orthogonal_matrix(n)
  matrix=zeros(n);
  k=sqrt(1/n);
  matrix(1,:) = k*ones(1,n);
  for i=2:n
    aux = [ones(1,i-1),-(i-1),zeros(1,n-i)];
    matrix(i,:) = aux/norm(aux);
  end
end