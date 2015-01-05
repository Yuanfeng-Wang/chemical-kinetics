%assumptions
eps=0.0001
q=0.0001

f=1;
del=1

t=1

X1=t*(1-q*t)/(t-1);
Y1=t;
Z1=0;

X2=t;
Y2=t;
Z2=2*f*t/(1+t);

X3=t;
Y3=0;
Z3=t;


%f=0
ezplot3('t/(t-1)','t','0',[-0.5,0.5],'animate')
hold on
%g=0
ezplot3('t','t','2*t/(1+t)',[-0.5,0.5],'animate')
hold on
%h=0
ezplot3('t','0','t',[-0.5,0.5],'animate')
