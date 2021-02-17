function [Fmot] = motorkracht(Ia)
rwiel = 0.14; 
T = koppel(Ia);
Fmot = T / rwiel; 
end

