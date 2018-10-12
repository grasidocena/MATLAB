function [A,C]=AreaAnnulus()
r=input('Type the value of the inner radius r: ');
R=input('Type the value of the outer radius R:');
A=(pi*((R^2)-(r^2)));
C=(2*pi*R);
end
