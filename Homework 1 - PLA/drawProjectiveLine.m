function drawProjectiveLine(v, p, style)
    if nargin==2
        style='-';
    end
    w1 = -10 * v + p;
    w2 = 10 * v + p;
    w1 = to2d(w1);
    w2 = to2d(w2);
    myline(w1(1),w1(2),w2(1),w2(2),style);
    
%     if abs(a) > 0.0001
%         % x = f(y)
%         x1 = b / a;
%         x2 = -b / a;
%         myline(x1,-1,x2,1);
%     else
%         % y = f(x)
%         y1 = a / b;
%         y2 = -a / b;
%         myline(-1, y1, 1, y2);
%     end
end

function w = to2d(v)
    w = v(1:2) / v(3);
end

function myline(x1,y1,x2,y2,style)
    line('XData',[x1 x2], 'YData',[y1 y2],'LineStyle', style);
end

