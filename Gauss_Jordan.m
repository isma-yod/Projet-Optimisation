function [c]=Gauss_Jordan(A)

disp('Le premier pivot A(1,1)')
Pivot=A(1,1);
for j=1:10
A(1,j)=A(1,j)/A(1,1);
end
Pivot=A(2,1);
for j=1:10
A(2,j)=A(2,j)- Pivot*A(1,j);
end
Pivot=A(3,1);
for j=1:10
A(3,j)=A(3,j)- Pivot*A(1,j);
end
Pivot=A(4,1);
for j=1:10
A(4,j)=A(4,j)- Pivot*A(1,j);
end
Pivot=A(5,1);
for j=1:10
A(5,j)=A(5,j)- Pivot*A(1,j);
end
Pivot=A(6,1);
for j=1:10
A(6,j)=A(6,j)- Pivot*A(1,j);
end
Pivot=A(7,1);
for j=1:10
A(7,j)=A(7,j)- Pivot*A(1,j);
end
Pivot=A(8,1);
for j=1:10
A(8,j)=A(8,j)- Pivot*A(1,j);
end
Pivot=A(9,1);
for j=1:10
A(9,j)=A(9,j)- Pivot*A(1,j);
end


disp('Le deuxième pivot A(2,2)')
Pivot=A(2,2);
for j=2:10
A(2,j)=A(2,j)/Pivot;
end
Pivot=A(1,2);
for j=2:10
A(1,j)=A(1,j)- Pivot*A(2,j);
end
Pivot=A(3,2);
for j=2:10
A(3,j)=A(3,j)- Pivot*A(2,j);
end
Pivot=A(4,2);
for j=1:10
A(4,j)=A(4,j)- Pivot*A(2,j);
end
Pivot=A(5,2);
for j=1:10
A(5,j)=A(5,j)- Pivot*A(2,j);
end
Pivot=A(6,2);
for j=1:10
A(6,j)=A(6,j)- Pivot*A(2,j);
end
Pivot=A(7,2);
for j=1:10
A(7,j)=A(7,j)- Pivot*A(2,j);
end
Pivot=A(8,2);
for j=1:10
A(8,j)=A(8,j)- Pivot*A(2,j);
end
Pivot=A(9,2);
for j=1:10
A(9,j)=A(9,j)- Pivot*A(2,j);
end



disp('Le troisième pivot A(3,3)')
Pivot=A(3,3);
for j=3:10
A(3,j)=A(3,j)/Pivot;
end
Pivot=A(1,3) ;
for j=3:10
A(1,j)=A(1,j)-Pivot*A(3,j);
end
Pivot=A(2,3);
for j=3:10
A(2,j)=A(2,j)- Pivot*A(3,j);
end
Pivot=A(4,3);
for j=3:10
A(4,j)=A(4,j)- Pivot*A(3,j);
end
Pivot=A(5,3);
for j=3:10
A(5,j)=A(5,j)- Pivot*A(3,j);
end
Pivot=A(6,3);
for j=3:10
A(6,j)=A(6,j)- Pivot*A(3,j);
end
Pivot=A(7,3);
for j=3:10
A(7,j)=A(7,j)- Pivot*A(3,j);
end
Pivot=A(8,3);
for j=3:10
A(8,j)=A(8,j)- Pivot*A(3,j);
end
Pivot=A(9,3);
for j=3:10
A(9,j)=A(9,j)- Pivot*A(3,j);
end


disp('Le quatrieme pivot A(4,4)')
Pivot=A(4,4);
for j=4:10
A(4,j)=A(4,j)/Pivot;
end
Pivot=A(1,4) ;
for j=4:10
A(1,j)=A(1,j)-Pivot*A(4,j);
end
Pivot=A(2,4);
for j=4:10
A(2,j)=A(2,j)- Pivot*A(4,j);
end
Pivot=A(3,4);
for j=4:10
A(3,j)=A(3,j)- Pivot*A(4,j);
end
Pivot=A(5,4);
for j=4:10
A(5,j)=A(5,j)- Pivot*A(4,j);
end
Pivot=A(6,4);
for j=4:10
A(6,j)=A(6,j)- Pivot*A(4,j);
end
Pivot=A(7,4);
for j=4:10
A(7,j)=A(7,j)- Pivot*A(4,j);
end
Pivot=A(8,4);
for j=4:10
A(8,j)=A(8,j)- Pivot*A(4,j);
end
Pivot=A(9,4);
for j=4:10
A(9,j)=A(9,j)- Pivot*A(4,j);
end



disp('Le cinquieme pivot A(5,5)')
Pivot=A(5,5);
for j=5:10
A(5,j)=A(5,j)/Pivot;
end
Pivot=A(1,5) ;
for j=5:10
A(1,j)=A(1,j)-Pivot*A(5,j);
end
Pivot=A(2,5);
for j=5:10
A(2,j)=A(2,j)- Pivot*A(5,j);
end
Pivot=A(3,5);
for j=5:10
A(3,j)=A(3,j)- Pivot*A(5,j);
end
Pivot=A(4,5);
for j=5:10
A(4,j)=A(4,j)- Pivot*A(5,j);
end
Pivot=A(6,5);
for j=5:10
A(6,j)=A(6,j)- Pivot*A(5,j);
end
Pivot=A(7,5);
for j=5:10
A(7,j)=A(7,j)- Pivot*A(5,j);
end
Pivot=A(8,5);
for j=5:10
A(8,j)=A(8,j)- Pivot*A(5,j);
end
Pivot=A(9,5);
for j=5:10
A(9,j)=A(9,j)- Pivot*A(5,j);
end


disp('Le sixieme pivot A(6,6)')
Pivot=A(6,6);
for j=6:10
A(6,j)=A(6,j)/Pivot;
end
Pivot=A(1,6) ;
for j=6:10
A(1,j)=A(1,j)-Pivot*A(6,j);
end
Pivot=A(2,6);
for j=6:10
A(2,j)=A(2,j)- Pivot*A(6,j);
end
Pivot=A(3,6);
for j=6:10
A(3,j)=A(3,j)- Pivot*A(6,j);
end
Pivot=A(4,6);
for j=6:10
A(4,j)=A(4,j)- Pivot*A(6,j);
end
Pivot=A(5,6);
for j=6:10
A(6,j)=A(6,j)- Pivot*A(6,j);
end
Pivot=A(7,6);
for j=6:10
A(7,j)=A(7,j)- Pivot*A(6,j);
end
Pivot=A(8,6);
for j=6:10
A(8,j)=A(8,j)- Pivot*A(6,j);
end
Pivot=A(9,6);
for j=6:10
A(9,j)=A(9,j)- Pivot*A(6,j);
end


disp('Le septieme pivot A(7,7)')
Pivot=A(7,7);
for j=7:10
A(7,j)=A(7,j)/Pivot;
end
Pivot=A(1,7) ;
for j=7:10
A(1,j)=A(1,j)-Pivot*A(7,j);
end
Pivot=A(2,7);
for j=7:10
A(2,j)=A(2,j)- Pivot*A(7,j);
end
Pivot=A(3,7);
for j=7:10
A(3,j)=A(3,j)- Pivot*A(7,j);
end
Pivot=A(4,7);
for j=7:10
A(4,j)=A(4,j)- Pivot*A(7,j);
end
Pivot=A(5,7);
for j=7:10
A(5,j)=A(5,j)- Pivot*A(7,j);
end
Pivot=A(6,7);
for j=7:10
A(6,j)=A(6,j)- Pivot*A(7,j);
end
Pivot=A(8,7);
for j=7:10
A(8,j)=A(8,j)- Pivot*A(7,j);
end
Pivot=A(9,7);
for j=7:10
A(9,j)=A(9,j)- Pivot*A(7,j);
end

disp('Le huitieme pivot A(8,8)')
Pivot=A(8,8);
for j=8:10
A(8,j)=A(8,j)/Pivot;
end
Pivot=A(1,8);
for j=8:10
A(1,j)=A(1,j)-Pivot*A(8,j);
end
Pivot=A(2,8);
for j=8:10
A(2,j)=A(2,j)- Pivot*A(8,j);
end
Pivot=A(3,8);
for j=8:10
A(3,j)=A(3,j)- Pivot*A(8,j);
end
Pivot=A(4,8);
for j=8:10
A(4,j)=A(4,j)- Pivot*A(8,j);
end
Pivot=A(5,8);
for j=8:10
A(5,j)=A(5,j)- Pivot*A(8,j);
end
Pivot=A(6,8);
for j=8:10
A(6,j)=A(6,j)- Pivot*A(8,j);
end
Pivot=A(7,8);
for j=8:10
A(7,j)=A(7,j)- Pivot*A(8,j);
end
Pivot=A(9,8);
for j=8:10
A(9,j)=A(9,j)- Pivot*A(8,j);
end


disp('Le neuvieme pivot A(9,9)')
Pivot=A(9,9);
for j=9:10
A(9,j)=A(9,j)/Pivot;
end
Pivot=A(1,9);
for j=9:10
A(1,j)=A(1,j)-Pivot*A(9,j);
end
Pivot=A(2,9);
for j=9:10
A(2,j)=A(2,j)- Pivot*A(9,j);
end
Pivot=A(3,9);
for j=9:10
A(3,j)=A(3,j)- Pivot*A(9,j);
end
Pivot=A(4,9);
for j=9:10
A(4,j)=A(4,j)- Pivot*A(9,j);
end
Pivot=A(5,9);
for j=9:10
A(5,j)=A(5,j)- Pivot*A(9,j);
end
Pivot=A(6,9);
for j=9:10
A(6,j)=A(6,j)- Pivot*A(9,j);
end
Pivot=A(7,9);
for j=9:10
A(7,j)=A(7,j)- Pivot*A(9,j);
end
Pivot=A(8,9);
for j=9:10
A(8,j)=A(8,j)- Pivot*A(9,j);
end

h1=A(1,10);
h2=A(2,10);
h3=A(3,10);
h4=A(4,10);
h5=A(5,10);
h6=A(6,10);
h7=A(7,10);
h8=A(8,10);
h9=A(9,10);

c=[h1;h2;h3;h4;h5;h6;h7;h8;h9];
end