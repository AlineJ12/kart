function [E] = emk(v)
cte = 54; 
rwiel = 0.14; 
n_as = 60*(v/3.6)/(2*pi*rwiel); 
T_as = 30;
T_motor = 14;
n_motor = n_as*(T_as/T_motor);
E = (1/cte) * n_motor;
   
end
