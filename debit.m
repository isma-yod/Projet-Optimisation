function [Q_Conduite]= debit(K,h,i)

%Cette fonction contient le systeme d'equations a resoudre

%K représente les carastéristiques de la conduite, h représente les charges 
%des noeuds, i représente la conduite que l'on veut utiliser

if i == 1
    Q_Conduite = Q(K(1), 100, h(1));

elseif i == 2
    Q_Conduite = Q(K(2), h(1), h(2));

elseif i == 3
    Q_Conduite = Q(K(3), h(2), h(3));

elseif i == 4
    Q_Conduite = Q(K(4), h(3), h(4));

elseif i == 5
    Q_Conduite = Q(K(5), h(4), h(5));

elseif i == 6
    Q_Conduite = Q(K(6), h(5), h(6));

elseif i == 7
    Q_Conduite = Q(K(7), h(7), h(6));

elseif i == 8
    Q_Conduite = Q(K(8), h(8), h(7));

elseif i == 9
    Q_Conduite = Q(K(9), 100, h(8));

elseif i == 10
    Q_Conduite = Q(K(10), h(1), h(8));

elseif i == 11
    Q_Conduite = Q(K(11), h(8), h(9));

elseif i == 12
    Q_Conduite = Q(K(12), h(1), h(3));

elseif i == 13
    Q_Conduite = Q(K(13), h(9), h(3));

elseif i == 14
    Q_Conduite = Q(K(14), h(9), h(4));

elseif i == 15
    Q_Conduite = Q(K(15), h(8), h(4));

elseif i == 16
    Q_Conduite = Q(K(16), h(7), h(4));
end





