% robustify linear fitting
% Jingyi Bai 267936

close all
clear all

% set 5 points
x = [1 2 3 4 5];
y = [1 2 2.5 3.5 0];
plot(x, y, 'x');
hold on

n = 5;
a10 = [];
b10 = [];
err = [0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0;
    0,0,0,0,0,0,0,0,0,0];


% y = ax + b; record all a & b.
for i = 1:n
    for j = i:n
        if i ~= j
            a = (y(i) - y(j)) / (x(i) - x(j));
            b = y(i) - a * x(i);
            a10(end + 1) = a;
            b10(end + 1) = b;
        end
    end
end

% disp(a10);
% disp(b10);

% record all errors, list a table
for i = 1:10
    for j = 1:n
        index = 5 * (i - 1) + j;
        err(index) = abs(a10(i) * x(j) + b10(i) - y(j));
    end
end

disp(err);

% sort and find smallest median of errors
mdi = median(err);
smlmdi_index = 1;
for i = 1:10
    if mdi(i) < mdi(smlmdi_index)
        smlmdi_index = i;
    end
end

disp(mdi);
disp(smlmdi_index);

fx = linspace(0, 10);
fy = a10(smlmdi_index) * fx + b10(smlmdi_index);
plot(fx, fy, '-');
