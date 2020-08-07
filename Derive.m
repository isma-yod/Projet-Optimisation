function [djamel]=Derive(k,h1,h2)

djamel=(k*abs(h1 - h2)^(3/2))/(h1 - h2)^2 - (3*k*sign(h1 - h2)*abs(h1 - h2)^(1/2))/(2*(h1 - h2));
end
% Cette fonction permettra de calculer la dérivée partielle par rapport à h1,h2,h3,h4,...h9
