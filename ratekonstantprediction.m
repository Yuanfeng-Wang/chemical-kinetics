%Isomerization reaction X1<--->X2<--->X3
%where k21x1=k12x2 ... k31x3=k13x1
%Need to predict rate constants (forward and reverse for all rxns)
%Andrew R Garcia
X1=[.015 .042 .939]'; X2=[.049 .116 .830]'; X3=[.073 .168 .755]';
XM=[X1 X2 X3];

YM=transpose(inv(XM));

%<yi,x(t)>=<yi,x(t=0)>e^-lit
xo=[0 0 1]';
%xo =

 %  0
 %  0
 %  1


%separate Y matrix into Y vectors:
Y1=[6091.14399812094;-2771.31782945745;27.7190509748658];
Y2=[-14804.0873854832;6720.93023255836;-64.1296687808337];
Y3=[8699.08386187485;-3941.86046511641;37.3502466525735];

%assign times
t1=60.3; t2=179.2; t3=280.8;

%find eigenvalues:
%ln<y,x(t)>/<y,x(0)>=lt
lambda1=(log((transpose(Y1)*X1)/(transpose(Y1)*xo)))/t1;
lambda2=(log((transpose(Y2)*X2)/(transpose(Y2)*xo)))/t2;
lambda3=(log((transpose(Y3)*X3)/(transpose(Y3)*xo)))/t3;

%build K matrix from spectral decomposition 
%K = SIGMA|li*xi*yiT|
K=(((lambda1)*X1*transpose(Y1))+((lambda2)*X2*transpose(Y2))+((lambda3)*X3*transpose(Y3)))


%--Second round t0=405.7

xo2=[.107 .221 .670]';

X1=[.160 .292 .544]';
X2=[.252 .360 .389]';
X3=[.307 .355 .329]';
XM2=[X1 X2 X3];

YM2=transpose(inv(XM2));
Y1=[4.9898 -9.2700 5.3465]';
Y2=[-24.6384 29.0343 -8.338]';
Y3=[20.8811 -19.0015 4.0578]';

%assign times
t1=657.2;
t2=1229.7;
t3=1784.2;

%find eigenvalues:
%ln<y,x(t)>/<y,x(0)>=lt
lambda1=(log((transpose(Y1)*X1)/(transpose(Y1)*xo2)))/t1;
lambda2=(log((transpose(Y2)*X2)/(transpose(Y2)*xo2)))/t2;
lambda3=(log((transpose(Y3)*X3)/(transpose(Y3)*xo2)))/t3;

%build K matrix from spectral decomposition 
%K = SIGMA|li*xi*yiT|
K2=(((lambda1)*X1*transpose(Y1))+((lambda2)*X2*transpose(Y2))+((lambda3)*X3*transpose(Y3)))

