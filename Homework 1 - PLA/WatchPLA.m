%% Learning From data - Homework:
%  The Perceptron Learning Algorithm

N = 10;

[f dir p] = generateFunction();
xr = generatePoints(N);
adentro = xr(:,(f(xr)==1));
afuera = xr(:,(f(xr)~=1));
clf;
scatter(adentro(1,:),adentro(2,:),[],'r');
hold on
scatter(afuera(1,:),afuera(2,:),[],'b');
axis square;
axis([-1 1 -1 1]);
drawProjectiveLine(dir, p, '--');

[w, intentos] = PLA(f, xr, true);
clippedLine(w,'-');
fprintf('cantidad de intentos: %d \n', intentos);
fprintf('disagreement: %f \n',disagreement(f, w));