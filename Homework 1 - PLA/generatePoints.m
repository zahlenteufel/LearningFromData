function vs = generatePoints(howMany)
    vs = -1 + 2.*rand(2,howMany);
    vs = [vs; ones(1,howMany)];
end