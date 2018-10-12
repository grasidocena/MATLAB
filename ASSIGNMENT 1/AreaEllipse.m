function [A,C]= AreaEllipse()
a=input('Type the value of the semimajor axis a: ');
b=input('Type the value of the semiminor axis b:');
A=(pi*a*b);
C=pi*(3*(a+b)-(sqrt((a+(3*b))*(b+(3*a)))));
end
