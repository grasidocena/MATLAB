function [A,P]=AreaTriangle()
b=input('Type the value of the base: ');
h=input('Type the value of the height: ');
a=input('Type the value of side a: ');
c=input('Type the value of side c: ');
A=(b*h)*0.5;
P=a+b+c;
m=sqrt(a^2-h^2);
plot([m b 0 m], [a 0 0 a]),'k';
axis([-0.5 1.1*b -0.5 2*h]);
end