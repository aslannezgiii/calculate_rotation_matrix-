function [ Q_r ] = RM ( alpha, beta, gamma, state,m)
% this function is designed to calculate rotation matrix 
%% Coded by
% Mohamed Mohamed El-Sayed Atyya
% mohamed.atyya94@eng-st.cu.edu.eg
%% INPUTS:
% alpha         : rotation about first number of state in degree
% beta           : rotation about second number of state in degree
% gamma      : rotation about third number of state in degree
% state           : order of rotation
%% OUTPUTS:
% Q     : rotation matrix 
%  1 == x, 2 == y, 3 == z
if state == '121'
    Q=double(qx(gamma).*qy(beta).*qx(alpha));
elseif state == '212'
    Q=double(qy(gamma)*qx(beta,m)*qy(alpha));
elseif state == '313'  % Euler
    Q=double(qz(gamma)*qx(beta,m)*qz(alpha));
elseif state == '131'
    Q=double(qx(gamma)*qz(beta,m)*qx(alpha));
elseif state == '232'
    Q=double(qy(gamma)*qz(beta,m)*qy(alpha));
elseif state == '323'
    Q=double(qz(gamma)*qy(beta,m)*qz(alpha));
    
elseif state == '123' % yaw, pitch and roll
    Q=double(qx(gamma)*qy(beta)*qz(alpha));
elseif state == '231'
    Q=double(qy(gamma)*qz(beta)*qx(alpha));
elseif state == '312'
    Q=double(qz(gamma)*qx(beta)*qy(alpha));
elseif state == '132'
    Q=double(qx(gamma)*qz(beta)*qy(alpha));
elseif state == '213'
    Q=double(qy(gamma)*qx(beta)*qz(alpha));
elseif state == '321'
    Q=double(qz(gamma)*qy(beta)*qx(alpha));
end

    Q_r = Q * m;
    disp(Q);

end

