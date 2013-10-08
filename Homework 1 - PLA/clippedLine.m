function clippedLine(v, style)
    a = v(1); b = v(2); c = v(3);
    if nargin==1
        style='-';
    end
    if a > 0.0001
        x1 = (-c+b)/a;
        x2 = (-c-b)/a;
        myline(x1,-1,x2,1,style);
    else
        y1 = (-c+a)/b;
        y2 = (-c-a)/b;
        myline(-1,y1,1,y2,style);
    end
end

function myline(x1,y1,x2,y2,style)
    line('XData',[x1 x2], 'YData',[y1 y2],'LineStyle', style);
end