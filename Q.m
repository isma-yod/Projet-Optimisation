function [y] = Q(K,h1,h2) 

%Cette fonction calcule le débit dans une conduite à partir de ses
%caractéristiques géométriques et de la charge à ses extrémités

%K : caractéristique d'une conduite. h1 et h2 : charge des noeuds
y = K * (abs(h1 - h2) / (h1 - h2)) * (abs(h1 - h2)) ^ 0.5;
    
end


