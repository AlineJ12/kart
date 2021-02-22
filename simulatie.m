function [out] = simulatie(I0, v0)
%topsnelheid = 63.8412 km/h indien U = 48Vclose all;
lijst_t = []; 
lijst_v = []; 
lijst_a = []; 
lijst_E = [];
lijst_I = [];
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
   lijst_I = [lijst_I Ia];
   lijst_E = [lijst_E emk(v)];
end
figure(1);
plot(lijst_t, lijst_v, 'r'); 
title('snelheid ifv tijd');
xlabel('tijd (s)');
ylabel('snelheid (km/h)');
grid;

figure(2);
plot(lijst_t, lijst_a, 'b'); 
title('versnelling ifv tijd');
xlabel('tijd (s)');
ylabel('versnelling (m/s²)');
grid;

figure(3);
plot(lijst_t, lijst_I, 'g'); 
title('stroom ifv tijd');
xlabel('tijd (s)');
ylabel('stroom (A)');
grid;

figure(4);
plot(lijst_t, lijst_E, 'k'); 
title('tegen-emk ifv tijd');
xlabel('tijd (s)');
ylabel('spanning (V)');
grid;

hold(); 
end

