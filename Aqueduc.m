clear all;
clc;
matrice_augmente=linearisation(9,K,C,h);% matrice_augmente est la matrice augmentée du syteme 
                                        %linéaire a résoudre
sigma=Gauss_Jordan(matrice_augmente);  % sigma est la solution du systeme d'équation

h1 = sigma+h;                 % h1 est la est la valeur du vecteur 
                              % à l'itération 1                                       


j=1; % Initialisation du compteur
while(j < 2)
    matrice_augmente=linearisation(9,K,C,h);% matrice_augmente est la matrice augmentée du syteme 
                                        %linéaire a résoudre
    sigma=Gauss_Jordan(matrice_augmente);  % sigma est la solution du systeme d'équation

    h = sigma+h;                  % h_n_plus_un est la est la valeur du vecteur 
                                            % à l'itération 1                                       
    j=j+1;
end
disp(h)
disp(j)


[Diametre,L,n_manning,A,Rh,K,C,h,Cfeu]= lecture_Donnees();

n=length(C);    %Nombre de noeuds. C correspond au débit transitant par 
                %chaque noeud (Attention!! C est en m^3/s)
p=length(K);    %Nombre de conduites.





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Vous devez ici effectuer la séquence d'itérations permettant de calculer
%les débits des conduites et la charge dans chaque noeud.

%Vous avez les fonctions Q.m, debit.m, fonction.m, lecture_Donnees.m  à votre
%disposition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Partie affichage des résultats. Vous aurez peut-être à changer certains
%paramètres si vous changez les noms de variables
disp(['La precision obtenue est '  num2str(erreur)])
disp(['Le nombre d''iteration(s) effectuee(s) est de ' num2str(n_iterations)])

Resultats_debits_conduite(:,1)=(1:p)';
for i=1:p
    Resultats_debits_conduite(i,2)=debit(K,h,i);
end

Resultats_charge_noeuds(:,1)=(1:n+1)';
Resultats_charge_noeuds(1,2) =100;

for i=1:n
    Resultats_charge_noeuds(i+1,2) = h(i);  %Note : le vecteur h correspond 
                                                    %à la charge aux noeuds
end

Resultats_debits_conduite
Resultats_charge_noeuds




