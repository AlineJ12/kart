function [out] = simulatie_stroom_emk(v)
%topsnelheid = 63.8412 km/h indien U = 48V
U = 48;
R = 0.0225;
Ia = (U - emk(v))/R;
list1 = [];
list2 = [];
list3 = [];

for i = 0:1:70
    list1 = [list1 i];
    Ia = stroom(i);
    E = emk(i);
    list2 = [list2 Ia];
    list3 = [list3 E];
end 
figure(1);
plot(list1, list2); 
figure(2);
plot(list1, list3); 
hold(); 
end 

