instancename = '20090101';

filename = strcat(instancename, '.txt_run_0_obj.txt-');

iter = {'0', '10', '20', '30', '40', '50', '60', '70', '80', '90', '100'};
%pcolor = {'bV', 'gx', 'rV', 'cx', 'mV', 'yx', 'bx', 'gV', 'rx', 'cV', 'mx'};

for i = 1:11
    filenameIter = strcat(filename, iter{i});
    A = load(filenameIter);
    x = A(:, 1);
    y = A(:, 2);
    z = A(:, 3);
    subplot(1, 2, 1);
    plot(x, y, 'rs');
    xlabel('f_1: Rejected Requests');
    ylabel('f_2: Travel Cost');
    grid on;
    axis([0 40 0 400]);
    subplot(1, 2, 2);
    plot(x, z, 'rs');
    xlabel('f_1: Rejected Requests');
    ylabel('f_3: Workload Deviation');
    grid on;
    axis([0 40 0 300]);
    print(1, '-dbmp', sprintf('image%d', i))
    pause(1);
end