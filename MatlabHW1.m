radius1 = input("Input the radius for sphere 1: ");
volume1 = (4 * pi * radius1^3) / 3;
if radius1 >= 5
    multiplier = 0.3;
else
    multiplier = 0.15;
end
volume2 = (1 + multiplier) * volume1;
radius2 = nthroot( (3 * volume2) / (4 * pi), 3);
disp("The radius of sphere 2 is " + radius2);