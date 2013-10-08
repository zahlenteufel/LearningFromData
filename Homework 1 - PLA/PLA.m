function [w, trials] = PLA(f, dataset, animate)
    if nargin == 2
        animate = 0;
    end
    N = size(dataset,2);
    w = 0.01 * rand(1,3);
    missed = 1;
    trials = 0;
    while missed
        missed = 0;
        for i=1:N
            x = dataset(:,i);
            if f(x) ~= sign(w*x)
                w = w + f(x) * x';
                missed = 1;
                trials = trials + 1;
                if animate
                    clippedLine(w,':');
                    pause(0.1);
                end
            end
        end
    end
end

