function [A,P]=AreaSquare()
s=input('Type the value of the side: ');
A=s^2;
P=4*s;
plot([0 s s 0 0], [s s 0 0 s]),'k';
axis([-0.5 1.1*s -0.5 1.1*s]);
end