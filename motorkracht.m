function [Fwiel] = motorkracht(Ia)
% kracht die de motor levert aan de wielen
rwiel = 0.14; 
Mmotor = koppel(Ia);
T_wiel = 30;
T_motor = 14;
Mwiel = Mmotor * (T_wiel/T_motor); 
Fwiel = Mwiel / rwiel;
end

