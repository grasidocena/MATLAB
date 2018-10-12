function [A,P]=AreaCircleMonotonic()
ub=input('Type Upper Bound: ');
lb=input('Type Lower Bound: ');
step=(ub-lb)/10;
for r=lb:step:ub
A=(pi*r^2);
P=2*pi*r;
xc=r;
yc=r;
theta=0:pi/50:2*pi;
x=r*cos(theta)+xc;
y=r*sin(theta)+yc;
plot(x, y,'k')
hold on
end
end