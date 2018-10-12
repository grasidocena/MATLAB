%QUESTION 4
fprintf('\n(1)Square\n')
fprintf('\n(2)Equilateral Triangle\n')
fprintf('\n(3)Circle\n')

Shape=input('\nType the number corresponding to your desired shape: \n');
if Shape<=0 || Shape>11
    fprintf('ERROR: Please type a number from 1 to 11');
end

%Calculation of Areas
switch Shape
    case 1
        [Area,Perimeter]=AreaSquareMonotonic();    
    case 2
         [Area,Perimeter]=AreaEquilateralTriangleMonotonic();    
    case 3
        [Area,Perimeter]=AreaCircleMonotonic();       
           
end
        if  Shape<=2 && Shape>=1
            fprintf('Area:%.2f, Perimeter:%.2f\n',Area, Perimeter);
        elseif Shape==3 
            fprintf('Area:%.2f, Circumference:%.2f\n',Area, Perimeter);   
        end