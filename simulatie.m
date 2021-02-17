function [output] = simulatie_versnelling(I0, v0)
lijst_t = []; 
lijst_v = []; 
lijst_a = []; 
Ia = I0;
v = v0;
dt = 0.05;
for i = 0:dt:5
   lijst_t = [lijst_t i];
   lijst_a = [lijst_a acceleratie(Ia, v)];
   dv = acceleratie(Ia, v) * dt; 
   lijst_v = [lijst_v v+dv];
end
output = plot(lijst_t, lijst_a); 
hold(); 
end

