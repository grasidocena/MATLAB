function [A,P]=AreaSectorOfaCircle()
r=input('Type the value of the radius: ');
o=input('Type the angle in degrees:');
d=o*(pi/180);
A=(0.5*d*(r^2));
P=(2*r)+(d*r);
plot([0 cos(o) r 0], [0 sin(o) 0  0]),'k';
axis([-0.5 1.1*r -0.5 2*sin(o)]);
end