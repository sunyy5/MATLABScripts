instancename = '20090101';
filename = strcat(instancename, '.txt_run_0_obj.txt');

A = load(filename);
x = A(1:101, 1);
y = A(1:101, 2);
z = A(1:101, 3);

plot(x, y, 'r');
hold on;
plot(x, z, 'b');
xlabel('迭代次数');
ylabel('解个数');
legend('合法+非法', '合法');

print(1, '-dbmp', sprintf('image'))