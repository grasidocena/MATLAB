function [A,P]=AreaSquareMonotonic()
ub=input('Type Upper Bound: ');
lb=input('Type Lower Bound: ');
step=(ub-lb)/10;
for s=lb:step:ub
A=s^2;
P=4*s;
plot([0 s s 0 0], [s s 0 0 s]),'k';
axis([-1 1.1*s -1 1.1*s]);
hold on
end
end