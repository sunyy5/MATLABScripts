% 20090101.txt_run_0_obj-2h
% 20090102.txt_run_0_obj-2h
% 20090103.txt_run_0_obj-2h
% 20090104.txt_run_0_obj-2h
% 20090105.txt_run_0_obj-2h
% 20090106.txt_run_0_obj-2h
% 20090107.txt_run_0_obj-2h
% 20090108.txt_run_0_obj-2h
% 20090109.txt_run_0_obj-2h
% 20091230.txt_run_0_obj-2h

instancename = '20090101';
filename = strcat(instancename, '.txt_run_0_obj-fea.txt');
A = load(filename);
x = A(:, 1);
y = A(:, 2);
z = A(:, 3);
h = figure;
plot3(x, y, z, 'bo');
xlabel('f_1: Rejected Requests');
ylabel('f_2: Travel Cost');
zlabel('f_3: Workload Deviation');
title(instancename);
grid on;
hold on;
axis tight;
filename2 = strcat(instancename, '.txt_run_0_obj-infea.txt');
B = load(filename2);
x2 = B(:, 1);
y2 = B(:, 2);
z2 = B(:, 3);
plot3(x2, y2, z2, 'r+');
legend('fea', 'infea');

figure;
plot(x, y, 'bo');
xlabel('f_1: Rejected Requests');
ylabel('f_2: Travel Cost');
hold on;
plot(x2, y2, 'r+');
figure;
plot(x, z, 'bo');
xlabel('f_1: Rejected Requests');
ylabel('f_3: Workload Deviation');
hold on;
plot(x2, z2, 'r+');
figure;
plot(y, z, 'bo');
xlabel('f_2: Travel Cost');
ylabel('f_3: Workload Deviation');
hold on;
plot(y2, z2, 'r+');

print(1, '-dbmp', sprintf('image'))
print(2, '-dbmp', sprintf('image1'))
print(3, '-dbmp', sprintf('image2'))
print(4, '-dbmp', sprintf('image3'))
print(4, '-dbmp', sprintf('image4'))