function [A,P]=AreaRegularPolygon()
s=input('Type the value of the side: ');
n=input('Type the number of sides:');
R=input('Type the value of R:');
A=(0.25*n*(R^2)*sin((2*pi)/n));
P=n*s;
end
