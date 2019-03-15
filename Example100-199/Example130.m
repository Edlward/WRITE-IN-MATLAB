% 敲击左右键移动底部方块
clear; clc; clf;
% ------------------- 设置 ------------------------------------------ %
set(gcf,'units', 'normal','position', [.1 .1 .8 .8],...   % figure属性                          
  'KeyPressFcn',@controls,   'color', [.6 .6 .8]);        % 绑定按键回调                             
set(gca,'color',  'black','position', [.05 .05 .9 .9],... % 坐标轴属性
         'XLim', [-5 100],    'YLim', [-5 100],...
        'XTick',       [],   'YTick', [],'nextplot',  'add')
             
global blockPos; blockPos = 0;                            % 底部方块                                                                         
blockVertices = @(x) [x-5,-2; x+5,-2; x+5, 0; x-5, 0];                     
blockObj = patch('Vertices', blockVertices(blockPos),...
                    'Faces', [1 2 3 4],'FaceColor', [.6 .8 .6]);
       
ballPos  = [ 10; 10];                                     % 小球            
ballVel  = [ .5;  1];                               
ballObj  = plot(ballPos(1),ballPos(2),'.',...
              'MarkerSize',50,'color',[.8 .6 .6]);        
% ----------------------- 主循环 ------------------------------------ %        
while 0 < 1                                              
    tic;                                                  % 开始计时
    
    if ballPos(1) > 100 || ballPos(1) < 0                 
        ballVel(1) = -ballVel(1);                         % 边界
    elseif ballPos(2) > 100
        ballVel(2) = -ballVel(2);                         % 顶部墙
    elseif ballPos(2) < 0 
        if abs(blockPos - ballPos(1)) < 5                 % 底部方块
            ballVel(2) = -ballVel(2);
        else                                              % 方块没接住球
            close all; break;                              
        end
    end 
    
    ballPos = ballPos + ballVel;                          % 球的动作         
    set(ballObj,'XData',ballPos(1),'YData',ballPos(2));
    set(blockObj,'Vertices',  blockVertices(blockPos));   
    pause(1/60 - toc);                                    % 60 fps
end
% -------------------- 回调函数 ------------------------------------ %
function controls(~, event)                               % 按键回调
    global blockPos                             
    switch event.Key
        case 'leftarrow'
            blockPos = blockPos - 5;            
        case 'rightarrow'
            blockPos = blockPos + 5;     
    end
end