function [y] = Q(K,h1,h2) 

%Cette fonction calcule le d�bit dans une conduite � partir de ses
%caract�ristiques g�om�triques et de la charge � ses extr�mit�s

%K : caract�ristique d'une conduite. h1 et h2 : charge des noeuds
y = K * (abs(h1 - h2) / (h1 - h2)) * (abs(h1 - h2)) ^ 0.5;
    
end


