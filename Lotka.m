function xprime = Lotka(t,x,p)
% Lotka: computes derivatives involved in solving the Lotka-Volterra
% prey-predator equations
kx=p(1);ky=p(2);kd=p(3);a=p(4);
xprime=[kx*a*x(1)-ky*x(1)*x(2); ky*x(1)*x(2)-kd*x(2)];