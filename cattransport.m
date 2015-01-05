function dx=cattransport(t,x)
dx=zeros(4,1);

phi1=0.1;
gamdot1=30;
beta1=0.6;

%Dpsi^2/Dx^2
dx(1)=x(2);
dx(2)=(phi1^2)*exp(-gamdot1*((1/x(3))-1))*x(1);
%D^2gam/Dx^2
dx(3)=x(4);
dx(4)=-(phi1^2)*beta1*exp(-gamdot1*((1/x(3))-1))*x(1);
