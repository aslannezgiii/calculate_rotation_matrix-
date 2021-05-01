function [q1]=qx(X)
      q1=[1,0,0,0;0,cos(X),-sin(X),0;0,sin(X),cos(X),0;0,0,0,1];
% ## q1=[1,0,0;0,cosd(X),-sind(X);0,sind(X),cosd(X)];
    end