function [Flucht] = luchtweerstandskracht(v)
rho = 1.202; 
S = 1; 
Cx = 0.35; 
vwind = 0; 
Flucht = 0.5 * rho * S * Cx * ((v+vwind)/3.6)^2;
end

