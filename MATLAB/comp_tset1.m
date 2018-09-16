clc
clear all
x=[1:0.001:5];
y=@(x) (sin(1./(x.*(2-x)))).^2;
[dy,xc] = Der(y,x,'h2');
[dy2,xc] = Der (y,x,'sd');
subplot(311)
plot(x,y(x))
legend({'$${f(x)}=\sin^2({\frac{1}{x(2-x)})}$$'},'Interpreter', 'latex')
subplot(312)
plot(xc,dy)
legend({'derivative of $${f(x)}$$'},'Interpreter', 'latex')
subplot(313)
plot(xc,dy2)
legend({'second derivative of $${f(x)}$$'},'Interpreter', 'latex')

