% 依次读取生成的所有图片
for j = 1:11
    % 获取当前图片
    A = imread(sprintf('image%d.bmp',j));
    [I, map] = rgb2ind(A, 256);
    % 生成gif，并保存
    if(j == 1)
        imwrite(I, map, 'movefig.gif', 'DelayTime', 1, 'LoopCount', Inf)
    else
        imwrite(I, map, 'movefig.gif', 'WriteMode', 'append', 'DelayTime', 1)    
    end
end