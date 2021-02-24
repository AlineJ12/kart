function [Pmot] = vermogen_motor(v, Ia)
rwiel = 0.14; 
w_as = (v/(3.6*rwiel)); 
Tand_as = 30;
Tand_motor = 14;
w_motor = w_as*(Tand_as/Tand_motor);
T = koppel(Ia);

Pmot = T * w_motor;
end

