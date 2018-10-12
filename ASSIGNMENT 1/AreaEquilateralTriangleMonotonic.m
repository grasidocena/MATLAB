function [A,P]=AreaEquilateralTriangleMonotonic()
ub=input('Type Upper Bound: ');
lb=input('Type Lower Bound: ');
step=(ub-lb)/10;
for s=lb:step:ub
A=(((sqrt(3))/4)*(s^2));
P=3*s;
plot([s/2 s 0 s/2], [s 0 0 s]),'k';
axis([-0.5 1.1*s -0.5 1.1*s]);
hold on
end
end