filename = 'STEP_MatLab_HW_2_Data.txt';
delimiterIn = ' ';
headerlinesIn = 1;
data = importdata(filename,delimiterIn,headerlinesIn);
time = data.data(:,1);
accel = data.data(:,2);
vel = zeros(31,1);
vel(1) = time(1) * accel(1);
for i = 2:31
    vel(i) = (time(i) - time(i-1)) * accel(i) + vel(i-1);
end
Fig_data = figure(1);
hold on
title('Time vs. Velocity of Projected Glider');
xlabel('Time in Seconds');
ylabel('Velocity in Meters per Second');
plot(time, vel, '-o');
hold off
    