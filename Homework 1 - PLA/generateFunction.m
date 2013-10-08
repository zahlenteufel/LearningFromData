function [f dir p] = generateFunction()
    p1 = generatePoint();
    p2 = generatePoint();
    v = p2 - p1;
    v = v / norm(v);
    dir = orthLine(v);
    p = p1;
    f = @(w) sign((w-repmat(p1,1,size(w,2)))'*v);
end

