clear all;
clc;
augment=linearisation(9,K,C,h);% fct est la matrice augment�e du syteme lin�aire a r�soudre
sigma=Gauss_Jordan(augment);  % sigma est la solution du systeme d'�quation
n_iterations=10000;

for i=1:n_iterations
    x(i)=sigma+h;
end
[Diametre,L,n_manning,A,Rh,K,C,h,Cfeu]= lecture_Donnees();

n=length(C);    %Nombre de noeuds. C correspond au d�bit transitant par 
                %chaque noeud (Attention!! C est en m^3/s)
p=length(K);    %Nombre de conduites.





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Vous devez ici effectuer la s�quence d'it�rations permettant de calculer
%les d�bits des conduites et la charge dans chaque noeud.

%Vous avez les fonctions Q.m, debit.m, fonction.m, lecture_Donnees.m  � votre
%disposition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Partie affichage des r�sultats. Vous aurez peut-�tre � changer certains
%param�tres si vous changez les noms de variables
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
                                                    %� la charge aux noeuds
end

Resultats_debits_conduite
Resultats_charge_noeuds




