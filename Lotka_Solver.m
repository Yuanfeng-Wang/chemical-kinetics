close all
clear all
%kx=p(1);ky=p(2);kd=p(3);a=p(4);
p=[1 1 10 1];
tspan=[0:0.1:20];
x0=[3 1];
[t,x]=ode15s(@Lotka,tspan,x0,[],p);
%rabbits
plot(t,x(:,1),'g')
hold on
%foxes
plot(t,x(:,2),'r')
