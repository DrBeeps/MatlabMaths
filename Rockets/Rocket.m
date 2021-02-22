clear
close all
% syms t r F a
% torque = r * F * sin(a) == t
% torque =
% F*r*sin(a) == t
% solve(torque, a)
% ans = 
% asin(t/(F*a))

% torque radius force angle between f and lever arm
% we are trying to solve for angle obv

% Initial variable setting
mass = 0.6 % kg
accelX = 15 % m/s^2

% f = ma
force = mass * accelX