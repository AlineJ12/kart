function [output] = simulatie_versnelling(I0, v0)
lijst_t = []; 
lijst_v = []; 
lijst_a = []; 
Ia = I0;
v = v0;
dt = 0.05;
for i = 0:dt:30
   lijst_t = [lijst_t i];
   lijst_a = [lijst_a acceleratie(Ia, v)];
   dv = acceleratie(Ia, v) * dt;
   v = v + dv;
   Ia = stroom(v);
   lijst_v = [lijst_v v];
end
figure(1);
plot(lijst_t, lijst_v); 
figure(2);
plot(lijst_t, lijst_a); 
hold(); 
end

