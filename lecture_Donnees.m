function   [Diametre,L,n_manning,A,Rh,K,C,h,Cfeu]= lecture_Donnees()

Diametre = xlsread('DonneesDevoir2_2009','Feuil1', 'B2:B17');
L = xlsread('DonneesDevoir2_2009','Feuil1', 'C2:C17');
n_manning = xlsread('DonneesDevoir2_2009','Feuil1', 'D2:D17');
A = xlsread('DonneesDevoir2_2009','Feuil1', 'E2:E17');
Rh = xlsread('DonneesDevoir2_2009','Feuil1', 'F2:F17');
K = xlsread('DonneesDevoir2_2009','Feuil1', 'G2:G17');
C = xlsread('DonneesDevoir2_2009','Feuil1', 'H2:H10');
h = xlsread('DonneesDevoir2_2009','Feuil1', 'I2:I12');
Cfeu = xlsread('DonneesDevoir2_2009','Feuil1', 'J2:J10');
end






