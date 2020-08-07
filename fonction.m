function [isma]=fonction(K,C,h,i)
%Cette fonction contient le système d'équations à résoudre
%K correspond aux caractéristiques des conduites, C et h aux noeuds, et i
%permet de choisir le noeud que l'on veut calculer. Pour chaque noeud i on 
%%% calcule la somme des débits entrants - somme des débits sortants - C(i) 
	
if i==1
   isma = debit(K,h,1) - debit(K,h,2) - debit(K,h,10) - debit(K,h,12) - C(1);

elseif i==2
    isma = debit(K,h,2) - debit(K,h,3) - C(2);

elseif i==3
    isma = debit(K,h,3) + debit(K,h,12) + debit(K,h,13) - debit(K,h,4) - C(3);

elseif i==4
    isma = debit(K,h,4) + debit(K,h,14) + debit(K,h,15) + debit(K,h,16) - debit(K,h,5) - C(4);

elseif i==5
% %     f = Q(K(5), h(4), h(5)) + Q(K(6), h(6), h(5)) - C(5);
    isma = debit(K,h,5) - debit(K,h,6) - C(5);    

elseif i==6
% %     f = Q(K(7), h(7), h(6)) - Q(K(6), h(6), h(5)) - C(6);
    isma = debit(K,h,6) + debit(K,h,7) - C(6); 
elseif i==7
    isma = debit(K,h,8) - debit(K,h,7) - debit(K,h,16) - C(7);

elseif i==8
    isma = debit(K,h,9) + debit(K,h,10) - debit(K,h,11) - debit(K,h,15) - debit(K,h,8) - C(8);
    
elseif i==9
    isma = debit(K,h,11) - debit(K,h,13) - debit(K,h,14) - C(9);

end

fonction

        

