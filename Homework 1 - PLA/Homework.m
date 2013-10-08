% Homework
%
% Take N = 10. Run the Perceptron Learning Algorithm to find g and measure
% the disagreement between f and g as P[f (x) = g(x)] (the probability that f and
% g will disagree on their classification of a random point). You can either calcu-
% late this exactly, or approximate it by generating a sufficiently large separate
% set of points to estimate it. Repeat the experiment for 1000 runs (as specified
% above) and take the average. Start the PLA with the weight vector w being all
% zeros, and at each iteration have the algorithm choose a point randomly from
% the set of misclassified points.
%

N = 10;
res = zeros(1000,2);
for i=1:1000
    f = generateFunction();
    dataset = generatePoints(N);
    [w iterations] = PLA(f,dataset);
    res(i,:) = [iterations disagreement(f,w)];
end
res = mean(res);

fprintf('\nN=%d\n', N);

% 7. How many iterations does it take on average for the PLA to converge for N = 10
% training points? Pick the value closest to your results (again, closest is the
% answer that makes the expression |your answer − given option| closest to 0).
% [a] 1
% [b] 15
% [c] 300
% [d] 5000
% [e] 10000

fprintf(' Average Iterations: %f\n', res(1));


% answer: 15 [b]

% 8. Which of the following is closest to P[f (x) = g(x)] for N = 10?
% [a] 0.001
% [b] 0.01
% [c] 0.1
% [d] 0.5
% [e] 0.8

fprintf(' Average Disagreement %f\n', res(2));

% answer: 0.1 [c]

%%

N = 100;
res = zeros(1000,2);
for i=1:1000
    f = generateFunction();
    dataset = generatePoints(N);
    [w iterations] = PLA(f,dataset);
    res(i,:) = [iterations disagreement(f,w)];
end
res = mean(res);

fprintf('\nN=%d\n', N);

% 9. Now, try N = 100. How many iterations does it take on average for the PLA
% to converge for N=100 training points? Pick the value closest to your results.
% [a] 50
% [b] 100
% [c] 500
% [d] 1000
% [e] 5000

fprintf(' Average Iterations: %f\n', res(1));

% answer: 100 [b]

% 10. Which of the following is closest to P[f (x) = g(x)] for N = 100?
% [a] 0.001
% [b] 0.01
% [c] 0.1
% [d] 0.5
% [e] 0.8

fprintf(' Average Disagreement %f\n', res(2));

% answer: 0.01 [b] 