function [output] = simulatie_versnelling(I0, v0)
close all;
lijst_t = []; 
lijst_v = []; 
lijst_a = []; 
lijst_emk = [];
lijst_stroom = [];
Ia = I0;
v = v0;
dt = 0.05;
for i = 0:dt:60
   lijst_t = [lijst_t i];
   lijst_a = [lijst_a acceleratie(Ia, v)];
   dv = acceleratie(Ia, v) * dt;
   v = v + dv;
   Ia = stroom(v);
   lijst_v = [lijst_v v];
   lijst_stroom = [lijst_stroom Ia];
   lijst_emk = [lijst_emk emk(v)];
end
figure(1);
plot(lijst_t, lijst_v, 'r'); 
figure(2);
plot(lijst_t, lijst_a, 'b'); 
figure(3);
plot(lijst_t, lijst_stroom, 'g'); 
figure(4);
plot(lijst_t, lijst_emk, 'y'); 
hold(); 
end

