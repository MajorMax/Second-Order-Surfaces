

% University Project - Plotting two second-order surfaces
% Plot two cylinders in 4 projectoins with given values
% No symbolic variables allowed


%  Parabolic Cylinder given values
% a = 8.33 b = -2.70 x0 = -0.40 y0 = 0.22 
% Hyperbolic Cylinder given values
% a = 6.32 b = -2.78 x0 = 1.36 y0 = -0.29

% Parabolic Cylinder in one projection
figure
a=8.33;
b=-2.70;
x0=-0.40;
y0=0.22;
fi = 0:pi/20:2*pi; 
z=-4:0.2:4;
[Fi,Z] = meshgrid(fi,z)
Ro = 5;
X = x0 + a*Ro*cos(Fi);
Y = y0 + (Ro.^2*cos(Fi).^2./(2*b));
surf(X,Y,Z);
title('Parabolic Cylinder');
xlabel('X')
ylabel('Y')
zlabel('Z')
shading interp
colormap winter
colorbar

%Parabolic Cylinder in 4 projections
figure
a=8.33;
b=-2.70;
x0=-0.40;
y0=0.22;
fi = 0:pi/20:2*pi; 
z=-4:0.2:4;
ro = 5;
[Fi,Z] = meshgrid(fi,z)
Ro = 5;
X = x0 + a*Ro*cos(Fi);
Y = y0 + (Ro.^2*cos(Fi).^2./(2*b));
colormap winter

subplot(2,2,1)
surfl(X,Y,Z,[10,50])
view(20,15)
shading interp
 
subplot(2,2,2)
surfl(X,Y,Z,[20,150])
view(20,15)
shading interp
 
subplot(2,2,3)
surfl(X,Y,Z,[10,50])
view(100,20)
shading interp
 
subplot(2,2,4)
surfl(X,Y,Z,[20,150])
view(100,20)
shading interp

sgtitle('Parabolic Cylinder 4 Projections')


%Hyperbolic Cylinder in one projection
figure
a = 6.32; 
b = -2.78;
x0= 1.36; 
y0= -0.29;
fi1=-pi/4+0.01:pi/100:pi/4-0.01;
fi2=3*pi/4+0.01:pi/100:5*pi/4-0.01;
z=-4:0.2:4;
[Fi1,Z]=meshgrid(fi1,z);
[Fi2,Z]=meshgrid(fi2,z);
Ro1 = 1./(sqrt(cos(2*Fi1)));
Ro2 = 1./(sqrt(cos(2*Fi2)));
X1=x0+a*cos(Fi1).*Ro1;
Y1=y0+a*sin(Fi1).*Ro1;
X2=x0+a*cos(Fi1).*Ro2;
Y2=y0+a*sin(Fi1).*Ro2;
surf(X1,Y1,Z)
title('Hyperbolic Cylinder');
xlabel('X')
ylabel('Y')
zlabel('Z')
shading interp
colormap spring
colorbar
hold on
surf(X2,Y2,Z)

% Hyperbolic Cylinder in 4 Projections
figure
a = 6.32; 
b = -2.78;
x0= 1.36; 
y0= -0.29;
fi1=-pi/4+0.01:pi/100:pi/4-0.01;
fi2=3*pi/4+0.01:pi/100:5*pi/4-0.01;
z=-4:0.2:4;
[Fi1,Z]=meshgrid(fi1,z);
[Fi2,Z]=meshgrid(fi2,z);
Ro1 = 1./(sqrt(cos(2*Fi1)));
Ro2 = 1./(sqrt(cos(2*Fi2)));
X1=x0+a*cos(Fi1).*Ro1;
Y1=y0+a*sin(Fi1).*Ro1;
X2=x0+a*cos(Fi1).*Ro2;
Y2=y0+a*sin(Fi1).*Ro2;
surf(X1,Y1,Z)
 
subplot(2,2,1)
[n,m]=size(Z)
color=zeros(n,m,3)
surf(X1,Y1,Z)
view(0,15)
 
subplot(2,2,2)
[n,m]=size(Z)
color=zeros(n,m,3)
surf(X1,Y1,Z)
shading interp
view(0,15)
 
subplot(2,2,3)
[n,m]=size(Z)
color=zeros(n,m,3)
mesh(X1,Y1,Z)
view(0,15)
 
subplot(2,2,4)
contourf(X1,Y1,Z)
colormap spring
grid on


sgtitle('Hyperbolic Cylinder 4 Projections')
