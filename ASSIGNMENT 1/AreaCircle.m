function [A,P]=AreaCircle()
r=input('Type the value of the radius: ');
A=(pi*r^2);
P=2*pi*r;
xc=r;
yc=r;
theta=0:pi/50:2*pi;
x=r*cos(theta)+xc;
y=r*sin(theta)+yc;
plot(x, y,'k')
end

