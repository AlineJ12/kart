function [a] = acceleratie(Ia, v)
Fmot = motorkracht(Ia);
Frol = rolweerstandskracht();
Flucht = luchtweerstandskracht(v);
M = 180; 
a = (Fmot - Frol - Flucht)/M; 
end

