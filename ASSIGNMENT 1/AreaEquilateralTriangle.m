function [A,P]=AreaEquilateralTriangle()
s=input('Type the value of the side: ');
A=(((sqrt(3))/4)*(s^2));
P=3*s;
plot([s/2 s 0 s/2], [s 0 0 s]),'k';
axis([-0.5 1.1*s -0.5 1.1*s]);
end