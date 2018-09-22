%This program aims to draw a certain piece of land with a round 
%building on it, calculating the gardening area based on the radius of the
%building. Based on the Maximum Budget of 250K, it also calculates the
%critical r for the project and total $ available per m^2 of garden.

%(1)DRAWING
%(2)GARDENING AREA
%(3)BUDGET CALCULATION
%(4)250k/GARDENING AREA

%(1)DRAWING
r=input('\nRadius of the core building (meters):');

%square land plotting
plot([-r r r -r -r],[r r -r -r r])
fill([-r r r -r -r],[r r -r -r r], 'g')
axis([-2*r 2*r -2*r 2*r])

%round building plotting
%circle=(r^2=x^2+y^2)
x=linspace(-r, r, 2000);
y1=sqrt(r^2*ones(1,2000)-x.^2);
y2=-sqrt(r^2*ones(1,2000)-x.^2);
hold on
plot(x, y1,'Color',[0,0,0])
fill(x, y1,[0.7,0.7,0.7])
plot(x, y2,'Color',[0,0,0]);
fill(x, y2,[0.7,0.7,0.7])

title('Gardening Area in Green')

%(2)GARDENING AREA
GardeningArea=(4*r^2)-(pi*r^2);
fprintf('\nTotal Gardening Area with radius of %.2f meter(s) is %.2f square meter(s).\n' ...
,r, GardeningArea)

%(3)BUDGET FOR GARDENING (250k) 
%Maximum possible gardening area considering 1m^2 of gardening costs 1k
MaxArea=250;
Rmax=(250/(4-pi))^(1/2);
fprintf('\nMaximum radius for 250k budget is %.2f meter(s), (1m^2 = 1k).\n',Rmax)

%(4)MAXIMUM $/250K PER m^2 ACCORDING TO THE RADIUS OF THE BUILDING
Budget=250000;
Bdgsqmetergardening=Budget/GardeningArea;
fprintf('\nIf building has a radius of %.2f, there will be $ %.2f per m^2 available from the budget.\n',r,Bdgsqmetergardening)

fprintf('\n\nThank you for choosing GD Engineering Solutions.');