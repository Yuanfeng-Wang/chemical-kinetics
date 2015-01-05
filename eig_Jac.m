x=-0.001672;
y=0;
z=-0.001672;
delta=1;
f=1;

J=[1-y 1-x 0;-y -1-x 2*f;delta 0 -delta];

%V = eigenvector
%D = eigenvalues

[V,D]=eig(J);

lambda=diag(D)

condition=det(J-D)