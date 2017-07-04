x = load('ex3x.dat'); 
Y = load('ex3y.dat');

x_unscaled = x;
Y_unscaled = y;
x = (x - mean(x))./std(x);
y = (y - mean(y))./std(y);

m = max(size(y));
n = min(size(x))+1;
X = [ones(m,1) x];
X_unscaled = [ones(m,1) x_unscaled];

N = 100;

theta = zeros(n,1);
alpha = 1;

for i=1:N
    theta = theta - alpha/m*(X'*(X*theta-Y));
end

J = ((X*theta)-Y)'*((X*theta)-Y)/(2*m)
theta

p1 = ([1650 3]-mean(x_unscaled))./std(x_unscaled);
prediction = [1 p1]*theta

