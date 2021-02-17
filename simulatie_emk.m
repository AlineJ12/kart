function [out] = simulatie_emk()
list1 = [];
list2 = [];

for i = 0:1:70
    list1 = [list1 i];
    E = emk(i);
    list2 = [list2 E];
end 
out = plot(list1, list2);
hold();
end

