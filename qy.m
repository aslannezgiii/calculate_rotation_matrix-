function [q2]=qy(Y)
      q2=[cos(Y),0,sin(Y),0;0,1,0,0;-sin(Y),0,cos(Y),0;0,0,0,1];
% ##       q2=[cosd(Y),0,sind(Y);0,1,0;-sind(Y),0,cosd(Y)];
    end