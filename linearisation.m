function [matrice]=linearisation(n,K,C,h)

f1= debit(K,h,1) - debit(K,h,2) - debit(K,h,10) - debit(K,h,12) - C(1);
f2= debit(K,h,2) - debit(K,h,3) - C(2);
f3=debit(K,h,3) + debit(K,h,12) + debit(K,h,13) - debit(K,h,4) - C(3);
f4= debit(K,h,4) + debit(K,h,14) + debit(K,h,15) + debit(K,h,16) - debit(K,h,5) - C(4);
f5= debit(K,h,5) - debit(K,h,6) - C(5); 
f6= debit(K,h,6) + debit(K,h,7) - C(6); 
f7= debit(K,h,8) - debit(K,h,7) - debit(K,h,16) - C(7);
f8= debit(K,h,9) + debit(K,h,10) - debit(K,h,11) - debit(K,h,15) - debit(K,h,8) - C(8);
f9= debit(K,h,11) - debit(K,h,13) - debit(K,h,14) - C(9);


% Toutes les dérivés partielle de la fonction 1 
dp_f1_h1=Derive(K(1),100,h(1))+Derive(K(2),h(2),h(1))+Derive(K(10),h(8),h(1))+Derive(K(12),h(3),h(1));% DérivéPart f1/h1
dp_f1_h2=-Derive(K(2),h(1),h(2)); % DérivéPart f1/h2
dp_f1_h3=0;
dp_f1_h4=0;
dp_f1_h5=0;
dp_f1_h6=0;
dp_f1_h7=0;
dp_f1_h8=0;
dp_f1_h9=0;


% Toutes les dérivés partielle de la fonction 2 
dp_f2_h1=-Derive(K(2),h(2),h(1));
dp_f2_h2=Derive(K(2),h(1),h(2))+Derive(K(3),h(3),h(2));
dp_f2_h3=-Derive(K(3),h(2),h(3));
dp_f2_h4=0;
dp_f2_h5=0;
dp_f2_h6=0;
dp_f2_h7=0;
dp_f2_h8=0;
dp_f2_h9=0;


% Toutes les dérivés partielle de la fonction 3 
dp_f3_h1=-Derive(K(12),h(3),h(1));
dp_f3_h2=-Derive(K(3),h(3),h(2));
dp_f3_h3=Derive(K(3),h(2),h(3))+Derive(K(12),h(1),h(3))+Derive(K(13),h(9),h(3))+Derive(K(4),h(4),h(3));
dp_f3_h4=-Derive(K(4),h(3),h(4));
dp_f3_h5=0;
dp_f3_h6=0;
dp_f3_h7=0;
dp_f3_h8=0;
dp_f3_h9=-Derive(K(13),h(9),h(3));


% Toutes les dérivés partielle de la fonction 4
dp_f4_h1=0;
dp_f4_h2=0;
dp_f4_h3=-Derive(K(4),h(4),h(3));
dp_f4_h4=Derive(K(4),h(3),h(4))+Derive(K(14),h(9),h(4))+Derive(K(15),h(8),h(4))+Derive(K(16),h(7),h(4))+Derive(K(5),h(5),h(4));
dp_f4_h5=-Derive(K(5),h(4),h(5));
dp_f4_h6=0;
dp_f4_h7=-Derive(K(16),h(4),h(7));
dp_f4_h8=-Derive(K(15),h(4),h(8));
dp_f4_h9=-Derive(K(14),h(4),h(9));


% Toutes les dérivés partielle de la fonction 5
dp_f5_h1=0;
dp_f5_h2=0;
dp_f5_h3=0;
dp_f5_h4=-Derive(K(5),h(5),h(4));
dp_f5_h5=Derive(K(5),h(4),h(5))-Derive(K(6),h(6),h(5));
dp_f5_h6=Derive(K(6),h(5),h(6));
dp_f5_h7=0;
dp_f5_h8=0;
dp_f5_h9=0;

% Toutes les dérivés partielle de la fonction 6
dp_f6_h1=0;
dp_f6_h2=0;
dp_f6_h3=0;
dp_f6_h4=0;
dp_f6_h5=-Derive(K(6),h(6),h(5));
dp_f6_h6=Derive(K(6),h(5),h(6))-Derive(K(7),h(7),h(6));
dp_f6_h7=Derive(K(7),h(6),h(7));
dp_f6_h8=0;
dp_f6_h9=0;


% Toutes les dérivés partielle de la fonction 7
dp_f7_h1=0;
dp_f7_h2=0;
dp_f7_h3=0;
dp_f7_h4=-Derive(K(16),h(7),h(4));
dp_f7_h5=0;
dp_f7_h6=Derive(K(7),h(7),h(6));
dp_f7_h7=-Derive(K(8),h(8),h(7))-Derive(K(7),h(6),h(7))+Derive(K(16),h(7),h(4));
dp_f7_h8=Derive(K(8),h(7),h(8));
dp_f7_h9=0;

% Toutes les dérivés partielle de la fonction 8
dp_f8_h1=-Derive(K(10),h(8),h(9));
dp_f8_h2=0;
dp_f8_h3=0;
dp_f8_h4=-Derive(K(15),h(8),h(4));
dp_f8_h5=0;
dp_f8_h6=0;
dp_f8_h7=Derive(K(8),h(8),h(7));
dp_f8_h8=-Derive(K(9),h(9),h(8))+Derive(K(10),h(1),h(8))+Derive(K(11),h(9),h(8))+Derive(K(15),h(4),h(8))-Derive(K(8),h(7),h(8));
dp_f8_h9=Derive(K(9),h(8),h(9))-Derive(K(11),h(8),h(9));


% Toutes les dérivés partielle de la fonction 9
dp_f9_h1=0;
dp_f9_h2=0;
dp_f9_h3=-Derive(K(13),h(9),h(3));
dp_f9_h4=-Derive(K(14),h(9),h(4));
dp_f9_h5=0;
dp_f9_h6=0;
dp_f9_h7=0;
dp_f9_h8=-Derive(K(11),h(9),h(8));
dp_f9_h9=Derive(K(11),h(8),h(9))+Derive(K(13),h(3),h(9))+Derive(K(14),h(4),h(9));




if n==2
    
    matrice=[ dp_f1_h1 dp_f1_h2 -f1;
             dp_f2_h1 dp_f2_h2 -f2];
    
elseif n==3
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 -f1;
            dp_f2_h1 dp_f2_h2 dp_f2_h3 -f2;
            dp_f3_h1 dp_f3_h2 dp_f3_h3 -f3];
 
elseif n==4
    
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 dp_f1_h4 -f1;
            dp_f2_h1 dp_f2_h2 dp_f2_h3 dp_f2_h4 -f2;
            dp_f3_h1 dp_f3_h2 dp_f3_h3 dp_f3_h4 -f3;
            dp_f4_h1 dp_f4_h2 dp_f4_h3 dp_f4_h4 -f4];
    
elseif n==5
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 dp_f1_h4 dp_f1_h5 -f1;
        dp_f2_h1 dp_f2_h2 dp_f2_h3 dp_f2_h4 dp_f2_h5 -f2;
        dp_f3_h1 dp_f3_h2 dp_f3_h3 dp_f3_h4 dp_f3_h5 -f3;
        dp_f4_h1 dp_f4_h2 dp_f4_h3 dp_f4_h4 dp_f4_h5 -f4;
        dp_f5_h1 dp_f5_h2 dp_f5_h3 dp_f5_h4 dp_f5 -f5];
    
elseif n==6
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 dp_f1_h4 dp_f1_h5 dp_f1_h6 -f1;
            dp_f2_h1 dp_f2_h2 dp_f2_h3 dp_f2_h4 dp_f2_h5 dp_f2_h6 -f2;
            dp_f3_h1 dp_f3_h2 dp_f3_h3 dp_f3_h4 dp_f3_h5 dp_f3_h6 -f3;
            dp_f4_h1 dp_f4_h2 dp_f4_h3 dp_f4_h4 dp_f4_h5 dp_f4_h6 -f4;
            dp_f5_h1 dp_f5_h2 dp_f5_h3 dp_f5_h4 dp_f5_h5 dp_f5_h6 -f5;
            dp_f6_h1 dp_f6_h2 dp_f6_h3 dp_f6_h4 dp_f6_h5 dp_f6_h6 -f6];
    
elseif n==7
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 dp_f1_h4 dp_f1_h5 dp_f1_h6 dp_f1_h7 -f1;
            dp_f2_h1 dp_f2_h2 dp_f2_h3 dp_f2_h4 dp_f2_h5 dp_f2_h6 dp_f2_h7 -f2;
            dp_f3_h1 dp_f3_h2 dp_f3_h3 dp_f3_h4 dp_f3_h5 dp_f3_h6 dp_f3_h7 -f3;
            dp_f4_h1 dp_f4_h2 dp_f4_h3 dp_f4_h4 dp_f4_h5 dp_f4_h6 dp_f4_h7 -f4;
            dp_f5_h1 dp_f5_h2 dp_f5_h3 dp_f5_h4 dp_f5_h5 dp_f5_h6 dp_f5_h7 -f5;
            dp_f6_h1 dp_f6_h2 dp_f6_h3 dp_f6_h4 dp_f6_h5 dp_f6_h6 dp_f6_h7 -f6;
            dp_f7_h1 dp_f7_h2 dp_f7_h3 dp_f7_h4 dp_f7_h5 dp_f7_h6 dp_f7_h7 -f7];

elseif n==8
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 dp_f1_h4 dp_f1_h5 dp_f1_h6 dp_f1_h7 dp_f1_h8 -f1;
            dp_f2_h1 dp_f2_h2 dp_f2_h3 dp_f2_h4 dp_f2_h5 dp_f2_h6 dp_f2_h7 dp_f2_h8 -f2;
            dp_f3_h1 dp_f3_h2 dp_f3_h3 dp_f3_h4 dp_f3_h5 dp_f3_h6 dp_f3_h7 dp_f3_h8 -f3;
            dp_f4_h1 dp_f4_h2 dp_f4_h3 dp_f4_h4 dp_f4_h5 dp_f4_h6 dp_f4_h7 dp_f4_h8 -f4;
            dp_f5_h1 dp_f5_h2 dp_f5_h3 dp_f5_h4 dp_f5_h5 dp_f5_h6 dp_f5_h7 dp_f5_h8 -f5;
            dp_f6_h1 dp_f6_h2 dp_f6_h3 dp_f6_h4 dp_f6_h5 dp_f6_h6 dp_f6_h7 dp_f6_h8 -f6;
            dp_f7_h1 dp_f7_h2 dp_f7_h3 dp_f7_h4 dp_f7_h5 dp_f7_h6 dp_f7_h7 dp_f7_h8 -f7;
            dp_f8_h1 dp_f8_h2 dp_f8_h3 dp_f8_h4 dp_f8_h5 dp_f8_h6 dp_f8_h7 dp_f8_h8 dp -f8];

elseif n==9
    matrice=[dp_f1_h1 dp_f1_h2 dp_f1_h3 dp_f1_h4 dp_f1_h5 dp_f1_h6 dp_f1_h7 dp_f1_h8 dp_f1_h9 -f1*0.5;
             dp_f2_h1 dp_f2_h2 dp_f2_h3 dp_f2_h4 dp_f2_h5 dp_f2_h6 dp_f2_h7 dp_f2_h8 dp_f2_h9 -f2*0.5;
             dp_f3_h1 dp_f3_h2 dp_f3_h3 dp_f3_h4 dp_f3_h5 dp_f3_h6 dp_f3_h7 dp_f3_h8 dp_f3_h9 -f3*0.5;
             dp_f4_h1 dp_f4_h2 dp_f4_h3 dp_f4_h4 dp_f4_h5 dp_f4_h6 dp_f4_h7 dp_f4_h8 dp_f4_h9 -f4*0.5;
             dp_f5_h1 dp_f5_h2 dp_f5_h3 dp_f5_h4 dp_f5_h5 dp_f5_h6 dp_f5_h7 dp_f5_h8 dp_f5_h9 -f5*0.5;
             dp_f6_h1 dp_f6_h2 dp_f6_h3 dp_f6_h4 dp_f6_h5 dp_f6_h6 dp_f6_h7 dp_f6_h8 dp_f6_h9 -f6*0.5;
             dp_f7_h1 dp_f7_h2 dp_f7_h3 dp_f7_h4 dp_f7_h5 dp_f7_h6 dp_f7_h7 dp_f7_h8 dp_f7_h9 -f7*0.5;
             dp_f8_h1 dp_f8_h2 dp_f8_h3 dp_f8_h4 dp_f8_h5 dp_f8_h6 dp_f8_h7 dp_f8_h8 dp_f8_h9 -f8*0.5;
             dp_f9_h1 dp_f9_h2 dp_f9_h3 dp_f9_h4 dp_f9_h5 dp_f9_h6 dp_f9_h7 dp_f9_h8 dp_f9_h9 -f9*0.5];
     
end