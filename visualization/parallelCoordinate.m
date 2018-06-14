clc;
clear;
objNum = 6;
algorithmNum = 2;
%algorithm1-CMP-red
%algorithm2-VaEA-blue
color = ['r', 'b'];
for j = 1: algorithmNum
    figure(1);
    filename = strcat('.\obj6\C101_100_run_00_obj.txt.nor_algorithm', num2str(j));
    filename
    [f] = textread(filename, '%f');
    [row, col] = size(f);
    f = reshape(f, objNum, row / objNum)';
    subplot(2, 1, j);
    plot(1: objNum, f', color(j));
    axis([1 objNum -1 2]);
    hold on;
    pause(0.5);
end