% ���ζ�ȡ���ɵ�����ͼƬ
for j = 1:11
    % ��ȡ��ǰͼƬ
    A = imread(sprintf('image%d.bmp',j));
    [I, map] = rgb2ind(A, 256);
    % ����gif��������
    if(j == 1)
        imwrite(I, map, 'movefig.gif', 'DelayTime', 1, 'LoopCount', Inf)
    else
        imwrite(I, map, 'movefig.gif', 'WriteMode', 'append', 'DelayTime', 1)    
    end
end