% LSQFit
% Jingyi Bai 267936

close all
clear all

x = [0 1 2 4 6 9];
y = [1 1.5 4 4 7 11];
plot(x, y, 'x');
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

fx = linspace(0, 10);
fy = a * fx + b;
plot(fx, fy, '-');

disp(a);
disp(b);


% p = polyfit(x,y,1);
% f = polyval(p,x);
% plot(x,y,'r*');
% hold on
% plot(x,f,'b-');
