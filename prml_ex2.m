% 2D linear model
% Jingyi Bai 267936

close all
clear all

figure;
axis([0 5 0 5]);
[x, y] = ginput(5);
scatter(x,y)
% plot(x, y, 'x');
hold on

n = 5;
sx2 = sum(x.^2); % ¦²x^2
sx = sum(x); % ¦²x
sxy = sum(x.*y); % ¦²xy
sy = sum(y); % ¦²y

a = (n * sxy - sx * sy) / (n * sx2 - sx * sx);
b = (sy - a * sx) / n;

% b = (sx2 * sy - sx * sxy) / (sx2 - sx * sx);
% a = (sxy - b * sx) / sx2;

% a = (sxy - sx * sy) / (sx2 - sx * sx);
% b = sy - a * sx;

% fx = linspace(0, 5);


% fy = a * fx + b;
plot(x, a*x+b, '-');

disp(a);
disp(b);
axis([0 5 0 5])

% p = polyfit(x,y,1);
% f = polyval(p,x);
% plot(x,y,'r*');
% hold on
% plot(x,f,'b-');
