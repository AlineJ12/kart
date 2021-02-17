function [out] = simulatie_stroom(v)
%topsnelheid = 63.8412 km/h indien U = 48V
U = 48;
R = 0.0225;
Ia = (U - emk(v))/R;
list1 = [];
list2 = [];

for i = 0:1:70
    list1 = [list1 i];
    Ia = stroom(i);
    list2 = [list2 Ia];
end 
out = plot(list1, list2);
hold();
end 

