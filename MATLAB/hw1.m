clc
clear all
load derdata.mat 
plot (X,Y)
[dy,xc] = Der(Y,X,'data');
[dy2,xc2] = Der (dy,xc,'data');
subplot(311)
plot(X,Y)
legend('data')
subplot(312)
plot(xc,dy)
legend('derivative')
subplot(313)
plot(xc2,dy2)
legend('second derivative')
