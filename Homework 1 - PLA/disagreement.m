function d = disagreement(f, w)
    N = 100000;
    points = generatePoints(N);
    d = (sum(f(points).' ~= sign(w*points))) / N; 
end