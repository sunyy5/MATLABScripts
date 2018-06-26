%
% Copyright (c) 2015, Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "license.txt" for license terms.
%
% Project Code: YPAP108
% Project Title: Solving Vehicle Routing Problem using Simulated Annealing
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: S. Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function PlotSolution(sol,model)
    % 车辆数目
    disp(['J = ' num2str(model.J)]);
    % 坐标范围
    disp(['xmin = ' num2str(model.xmin)]);
    disp(['xmax = ' num2str(model.xmax)]);
    disp(['ymin = ' num2str(model.ymin)]);
    disp(['ymax = ' num2str(model.ymax)]);
    % 所有点的x坐标值
    disp(['x = ' num2str(model.x)]);
    % 所有点的y坐标值
    disp(['y = ' num2str(model.y)]);
    % 仓库的坐标（第0个点的坐标）
    disp(['x0 = ' num2str(model.x0)]);
    disp(['y0 = ' num2str(model.y0)]);
    % sol.L{1}代表第1条路径
    % 例如：4 2（代表从仓库出发到第4个点，从第4个点到第2个点，然后从第2个点回到仓库）
    % 坐标点的下标从1开始
    
    J = model.J;
    
    xmin = model.xmin;
    xmax = model.xmax;
    ymin = model.ymin;
    ymax = model.ymax;
    
    x = model.x;
    y = model.y;
    x0 = model.x0;
    y0 = model.y0;
    
    L = sol.L;
    
    % hsv    Hue-saturation-value color map
    % hsv(M) returns an M-by-3 matrix containing an hsv colormap.
    % hsv, by itself, is the same length as the current figure's
    % colormap. If no figure exists, MATLAB creates one.
    Colors = hsv(J);
    
    for j = 1:J
        
        if isempty(L{j})
            continue;
        end
        disp(['L{j} = ' num2str(L{j})]);
        X = [x0 x(L{j}) x0];
        Y = [y0 y(L{j}) y0];
        
        Color = 0.8*Colors(j,:);
        
        plot(X,Y,'-o',...
            'Color','black',...%需要彩色的时候将black改成Color
            'LineWidth',1,...
            'MarkerSize',5,...
            'MarkerFaceColor','white');
        hold on;
        
    end

    plot(x0,y0,'ks',...
        'LineWidth',1,...
        'MarkerSize',10,...
        'MarkerFaceColor','black');
    
    hold off;
%   grid on;%描绘网格
    axis equal;
    
%    xlim([xmin xmax]);
%    ylim([ymin ymax]);
    
end