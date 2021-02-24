function [n] = rendement(v, Ia)
% n = rendement in %
Pmot = vermogen_motor(v, Ia);
P_elek = elektrisch_vermogen(Ia);

n = (Pmot / P_elek) * 100;
end

