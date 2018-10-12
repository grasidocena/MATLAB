
%This program aims to calculate the area and peremeter of many different
%shapes, taking into consideration the user input of shapes and measures.
%When user requires shapes of square, circle, rectangle, triangle
%or sector of a circle, their plot will appear. For the circle, square and
%equilateral triangle shapes, there will also be another program that receives 
%the Upper and Lower Bound Inputs and calculates and plots 10 monotonic 
%asked shapes.

%SQUARE
%s=side
%Area: A=s^2
%Perimeter: P=4s

%RECTANGLE
%l=length, w=width
%Area: A=l*w
%Perimeter: P=((2*l)+(2*w))

%TRIANGLE
%b=base, h=height
%Area: A=(b*h*(1/2))
%Perimeter: P=(a+b+c)

%EQUILATERAL TRIANGLE
%s=side
%Height: h=((sqrt(3))/2)*s
%Area: A=((sqrt(3))/4)*(s^2)
%Perimeter: P=(3*s)


%PARALLELOGRAM
%b=base, h=height, a=side
%Area: A=b*h
%Perimeter: P=((2*a)+(2*b))

%TRAPEZOID
%a,b=base, h=height, c,d=sides
%Area: A=0.5*(a+b)*h
%Perimeter: P=(a+b+c+d)

%CIRCLE
%r=radius, d=diameter
%Diameter: d=2*r
%Area: A=(pi*r^2)
%Circumference: C=(2*pi*r)OR =(pi*d)

%SECTOR OF A CIRCLE
%r=radius, ?=angle in radians
%Area: A=(0.5*?*r^2)
%Arc Length: s=?*r

%ELLIPSE
%a=semimajor axis, b=semiminor axis
%Area: A=(pi*a*b)
%Circumference: C=((pi*(3*(a+b)))-(sqrt((a+(3*b))+(b+(3*a))

%ANNULUS
%r=inner radius, R=outer radius
%Average Radius: p=0.5*(r+R)
%Width: w=(R-r)
%Area: A=(pi*((R^2)-(r^2)))

%REGULAR POLYGON
%s=side length
%n=number of sides
%Circumradius:R=(0.5*s*(csc(pi/n)))
%Area: A=(0.25*n*(s^2)*cot(pi/n)) OR A=(0.25*n*(R^2)*sin((2*pi)/n))


%QUESTION (1),(2), (3)
%Shapes identification, calculation of area and perimeter, and plotting of
%corresponding shapes
%Shape and correspondent parameters to calculate area
Square=1;
Rectangle=2;
Triangle=3;
EquilateralTriangle=4;
Parallelogram=5;
Trapezoid=6;
Circle=7;
SectorOfaCircle=8;
Ellipse=9;
Annulus=10;
RegularPolygon=11;

%Shapes options and corresponding numbers
fprintf('\n(1)Square\n')
fprintf('\n(2)Rectangle\n')
fprintf('\n(3)Triangle\n')
fprintf('\n(4)Equilateral Triangle\n')
fprintf('\n(5)Parallelogram\n')
fprintf('\n(6)Trapezoid\n')
fprintf('\n(7)Circle\n')
fprintf('\n(8)Sector Of a Circle\n')
fprintf('\n(9)Ellipse\n')
fprintf('\n(10)Annulus\n')
fprintf('\n(11)Regular Polygon\n')

Shape=input('\nType the number corresponding to your desired shape: \n');
if Shape<=0 || Shape>11
    fprintf('ERROR: Please type a number from 1 to 11');
end

%Calculation of Areas
switch Shape
    case 1
        [Area,Perimeter]=AreaSquare();
    case 2
        [Area,Perimeter]=AreaRectangle();
    case 3
        [Area,Perimeter]=AreaTriangle();
    case 4
         [Area,Perimeter]=AreaEquilateralTriangle();
    case 5
         [Area,Perimeter]=AreaParallelogram();
    case 6
        [Area,Perimeter]=AreaTrapezoid();
    case 7     
        [Area,Perimeter]=AreaRegularPolygon();        
    case 8
        [Area,Perimeter]=AreaSectorOfaCircle();
    case 9
        [Area,Perimeter]=AreaCircle();
    case 10
        [Area,Perimeter]= AreaAnnulus();
    case 11
        [Area,Perimeter]=AreaEllipse();
        
           
end
        if Shape<=8 && Shape>=1
            fprintf('Area:%.2f, Perimeter:%.2f\n',Area, Perimeter);
        elseif Shape<=11 && Shape>=1 
            fprintf('Area:%.2f, Circumference:%.2f\n',Area, Perimeter);   
        end
  
     

