function [Ia] = stroom(v)
%topsnelheid = 63.8412 km/h indien U = 48V
U = 48;
R = 0.0225;
Ia = (U - emk(v))/R;


if Ia > 400
    Ia = 400; 
end

if Ia < 0
    Ia = 0;
end

end 

