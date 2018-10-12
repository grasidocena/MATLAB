function [A,P]=AreaTrapezoid()
h=input('Type the value of the height: ');
a=input('Type the value of the base a: ');
b=input('Type the value of the top b, parallel to the base: ');
c=input('Type the value of side c: ');
d=input('Type the value of side d: ');
A=(0.5*(a+b)*h);
P=a+b+c+d;
end