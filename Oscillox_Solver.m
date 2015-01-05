close all
clear all

tspan=0:0.5:1200;
%initial values of Q1 Q2 Q3 = [Q0(1) Q0(2) Q0(3)]
Q0=[0.0001 0.0001 0.0001];

%k1=p(1);k2=p(2);kinv2=p(3);k3=p(4);kox=p(5);kred=p(6);pO2=p(7);pCO=p(8);
p550=[10013.45069 1000 304.9571761 99899.97976 0.112150648 0.006482871 1 1];
p543=[9896.036926 1000 240.8738939 88785.25333 0.110835614 0.005761596 1 1];
p536=[9776.987399 1000 189.0883183 78664.41571 0.109502259 0.005104818 1 1];
p529=[9656.276587 1000 147.4882859 69474.38895 0.108150298 0.004508444 1 1];
p522=[9533.878989 1000 114.2763329 61153.89443 0.106779445 0.003968497 1 1];

%Solve system of 'sharp' differential equations with ode15s
[t,Q550]=ode15s(@Oscillox,tspan,Q0,[],p550);
%rate of CO2 production over Pt: r_CO2=k3*Q1*Q2
r550=p550(4).*Q550(:,1).*Q550(:,2);
subplot(3,2,1)
plot(t,r550);
title('T=550K')

[t,Q543]=ode15s(@Oscillox,tspan,Q0,[],p543);
r543=p543(4).*Q543(:,1).*Q543(:,2);
subplot(3,2,3)
plot(t,r543);
title('T=543K')

[t,Q536]=ode15s(@Oscillox,tspan,Q0,[],p536);
r536=p536(4).*Q536(:,1).*Q536(:,2);
subplot(3,2,5)
plot(t,r536);
title('T=536K')
xlabel('t(sec)')

[t,Q529]=ode15s(@Oscillox,tspan,Q0,[],p529);
r529=p529(4).*Q529(:,1).*Q529(:,2);
subplot(3,2,2)
plot(t,r529);
title('T=529K')

[t,Q522]=ode15s(@Oscillox,tspan,Q0,[],p522);
r522=p522(4).*Q522(:,1).*Q522(:,2);
subplot(3,2,4)
plot(t,r522);
title('T=522K')
xlabel('t(sec)')
