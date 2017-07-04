
x = load('ex3x.dat'); 
Y = load('ex3y.dat');

m = max(size(y));
n = min(size(x))+1;
X = [ones(m,1) x];

theta = pinv(X'*X)*X'*Y

prediction = [1 1650 3]*theta