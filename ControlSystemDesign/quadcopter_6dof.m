m = 0.7; % mass in kg

pX = rand(0, 10);
pY = rand(0, 10);
pZ = rand(0, 10);

vX = rand(0, 3);
vY = rand(0, 3);
vZ = rand(0, 3);

rA = rand(0, 15);
pA = rand(0, 15);
yA = rand(0, 15);

rR = rand(1);
pR = rand(1);
yR = rand(1);

upForce = 0.45; % m/s^2 or newtons?
pT = 0;
rT = 0;
yT = 0;

g = -9.8;

i_x = 0.0978;
i_y = 0.0765;
i_z = 0.0456;

x = [pX pY pZ vX vY vZ rA pA yA rR pR yR]; 
% (pos X Y Z) (vel X Y Z) (roll pitch yaw Angle) (roll pitch yaw Rate)

u = [upForce pT rT yT]; % total upwards force pitch roll and yaw torques



A = [0 0 0 1 0 0 0 0 0 0 0 0; 
     0 0 0 0 1 0 0 0 0 0 0 0; 
     0 0 0 0 0 1 0 0 0 0 0 0; 
     0 0 0 0 0 0 0 -g 0 0 0 0; 
     0 0 0 0 0 0 g 0 0 0 0 0; 
     0 0 0 0 0 0 0 0 0 0 0 0; 
     0 0 0 0 0 0 0 0 0 1 0 0;
     0 0 0 0 0 0 0 0 0 0 1 0; 
     0 0 0 0 0 0 0 0 0 0 0 1; 
     0 0 0 0 0 0 0 0 0 0 0 0; 
     0 0 0 0 0 0 0 0 0 0 0 0; 
     0 0 0 0 0 0 0 0 0 0 0 0];
 
B = [0 0 0 0; 
     0 0 0 0;
     0 0 0 0;
     0 0 0 0; 
     1/m 0 0 0;
     0 0 0 0;
     0 0 0 0;
     0 0 0 0;
     0 0 0 0;
     0 1/i_x 0 0;
     0 0 1/i_y 0; 
     0 0 0 1/i_z];
 
C = [1 0 0 0 0 0 0 0 0 0 0 0; 
     0 1 0 0 0 0 0 0 0 0 0 0; 
     0 0 1 0 0 0 0 0 0 0 0 0; 
     0 0 0 0 0 0 1 0 0 0 0 0; 
     0 0 0 0 0 0 0 1 0 0 0 0; 
     0 0 0 0 0 0 0 0 1 0 0 0];
 
D = [0 0 0 0; 
     0 0 0 0; 
     0 0 0 0; 
     0 0 0 0; 
     0 0 0 0; 
     0 0 0 0];
 

