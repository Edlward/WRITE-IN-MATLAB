clear, clc;
data = xlsread('tmp.xlsx');
for transfer = 9 : -1 : 5
    data(:, transfer) = data(:, transfer - 1);
end
data(:, 3) = data(:, 3)*pi/180;
data(:, 4) = sin(data(:, 3));
data(:, 3) = cos(data(:, 3));