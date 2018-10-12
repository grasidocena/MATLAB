function [A,P]=AreaRectangle()
a=input('Type the value of the base a: ');
b=input('Type the value of the side b: ');
A=a*b;
P=(2*a)+(2*b);
plot([0 a a 0 0], [b b 0 0 b]),'k';
axis([-0.5 1.1*a -0.5 1.1*b]);
end