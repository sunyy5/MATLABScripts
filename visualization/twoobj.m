%obj_numΪ�����Ŀ����
obj_num = 6;
%algo_numΪ�Աȵ��㷨��
algo_num = 2;

algo_name = {'.\obj2\moead-test50-0-0-0-0.d0.tw4.D6_run_05_obj.txt'; '.\obj2\vaea-test50-0-0-0-0.d0.tw4.D6_run_05_obj.txt'};
%algo_name = {'.\obj2\moead-c101.txt'; '.\obj2\vaea-c101.txt'};

algo_mark = {'MOEA/D'; 'VaEA'};
marks = ['+r';'.b'];
%record_numΪÿ���㷨�ɼ��Ĵ���
record_num = 1;

% ͬʱ�۲�����Ŀ��
% x��yΪ��Ҫ���Ƶ�����Ŀ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(1);
% index = 0;
% for x = 1: obj_num
%     for y = x + 1: obj_num
%         index = index + 1;
%         for j = 1: record_num
%             for ai = 1: algo_num
%                 %�����ļ���
%                 filename = strcat(algo_name{ai}, 'run', num2str(j));
%                 [f] = textread(filename, '%f');
%                 f = reshape(f, obj_num, size(f, 1) / obj_num)';
%                 subplot(5, 3, index);
%                 plot(f(:, x), f(:, y), marks(ai, :));
%                 hold on;
%             end
%             legend(algo_mark);
%             xlabel(strcat('f', num2str(x)));
%             ylabel(strcat('f', num2str(y)));
%             %axis([1 5 -1 2]); %�̶�����ķ�Χ
%             pause(0.5);%�ӳ�ʱ��
%             hold off;      
%         end
%     end
% end  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%algoA-cmp
%algoB-vaea-4

%�����۲�����Ŀ��
x = 3;
y = 4;
figure(1);
for j = 1: record_num
    for ai = 1: algo_num
        %�����ļ���
        filename = strcat(algo_name{ai}, 'run', num2str(j));
        filename
        [f] = textread(filename, '%f');
        f = reshape(f, obj_num, size(f, 1) / obj_num)';
        plot(f(:, x), f(:, y), marks(ai, :));
        hold on;
    end
    legend(algo_mark);
    xlabel(strcat('f', num2str(x)));
    ylabel(strcat('f', num2str(y)));
    %axis([1 5 -1 2]); %�̶�����ķ�Χ
    pause(0.5);%�ӳ�ʱ��
    hold off;      
end