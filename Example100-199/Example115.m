% Who??? 
axis off;
set(gcf,'menubar','none','toolbar','none');
for k=1:60
    h=text(rand,rand,...
        ['\fontsize{',num2str(unifrnd(20,50)),'}\fontname{Times New Roman}Who???'],...
        'color',rand(1,3),'Rotation',360*rand);
    pause(0.1);
end