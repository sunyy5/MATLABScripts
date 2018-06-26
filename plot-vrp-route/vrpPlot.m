clc;
clear;
close all;

fileId = fopen('min-difference.out', 'r');
V = str2num(fgets(fileId));
% 获取变量的数据类型class(V)
for i = 1: V
    Route{i} = str2num(fgets(fileId));
    disp(Route{i});
    sol.L{i} = Route{i};
end
n = str2num(fgets(fileId));
c0 = str2num(fgets(fileId))
x0 = c0(1);
y0 = c0(2);
num = n - 1;
for i = 1: num
    c0 = str2num(fgets(fileId));
    x(i) = c0(1);
    y(i) = c0(2);
end
model.J = V;
model.xmin = 0;
model.ymin = 0;
model.xmax = 80;
model.ymax = 80;
model.x = x;
model.y = y;
model.x0 = x0;
model.y0 = y0;
PlotSolution(sol, model)

