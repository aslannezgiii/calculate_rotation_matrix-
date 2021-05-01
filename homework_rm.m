clc; clear; close all;

x=0; y=5; z=0;
figure;

quiver3(zeros(3,1),zeros(3,1),zeros(3,1),[x;0;0],[0;y;0],[0;0;z])
% Add title and axis labels
title(' '); xlabel('x'); ylabel('y'); zlabel('z');

m = [x ;y; z;1] ;

% alpha = 42; beta  = 17; gamma  = 25;  % örnek 8
alpha = 0; beta  = 0; gamma  = 45; 

alpha = deg2rad (alpha);
beta  = deg2rad (beta);
beta=beta * -1;
gamma = deg2rad (gamma);
state = '321'; 

result = RM ( alpha, beta, gamma, state,m);
hold on;

quiver3(zeros(3,1),zeros(3,1),zeros(3,1),[result(1);0;0],[0;result(2);0],[0;0;result(3)])

% plot(result(1:3));

% yardýmcý link : https://github.com/Mohamed-Mohamed/rotation-matrix/blob/master/RM.m 