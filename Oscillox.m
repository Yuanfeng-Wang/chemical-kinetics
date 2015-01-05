function dQ = Oscillox(t,Q,p)
%Q (vector) = [Q(1) Q(2) Q(3)]
k1=p(1);k2=p(2);kinv2=p(3);k3=p(4);kox=p(5);kred=p(6);pO2=p(7);pCO=p(8);

dQ =[pO2*k1*(1-Q(1)-Q(2)-Q(3))^2-k3*Q(1)*Q(2)-kox*Q(1)*(1-Q(3));...
    pCO*k2*(1-Q(1)-Q(2)-Q(3))-kinv2*Q(2)-k3*Q(1)*Q(2)-kred*Q(2)*Q(3);...
    kox*Q(1)*(1-Q(3))-kred*Q(2)*Q(3)];


