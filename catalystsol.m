[t,x] = ode45('cattransport',[0 1],[1 0 1 0]);

subplot(221)
plot3(t,x(:,1),x(:,3),'.');
xlabel('x');
ylabel('psi(x))');
zlabel('gamma(x)');
title('Mass and Heat Diffusion Effects for a Catalyst Pellet');

subplot(222)
plot(t,x(:,1),'-');
xlabel('x');
ylabel('psi(x)');
title('Mass Diffusion Profile ');
subplot(223)
plot(t,x(:,3),'-');
xlabel('x');
ylabel('gamma(x)');
title('Heat Diffusion Profile');
subplot(224)
circle;

%plot(x(:,1),x(:,3),'-');
%xlabel('psi(x)');
%ylabel('gamma(x)');
%title('Phase Plane Portrait for Lorenz attractor -- y(t) vs. x(t)');
