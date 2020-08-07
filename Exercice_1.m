%****************0*********
% Etude de la fonction : *
% f(x)=x^3-5x^2+7x-3 *
%*************************
x=-1:0.1:4;
f=x.^3-5*x.^2+7*x-3;
plot(x,f); grid on;
title('Fonction : f(x)=x^3-5x^2+7x-3');
%Après exécution du programme ci-dessus Et
%D ‘après la courbe obtenue, il est judicieux de choisir un x0=3
%car f(0.8) est proche de zéro pour avoir une convergence rapide. 


% Recherche d'une approximation de la racine de f(x)=x^3-5x^2+7x-3
clear all;
clc;
x(1)=3;
e=1e-10;
n=5000;
for i=2:n
f=x(i-1)^3-5*x(i-1)^2+7*x(i-1)-3;
diff=3*x(i-1)^2-10*x(i-1)+7;
x(i)=x(i-1)-f/diff;
if abs(x(i)-x(i-1))<=e
xp=x(i);
fprintf('xp=%f\n',x(i));
break;
end
end
disp('Les valeurs successives de x(i) sont :');
x'
% Les résultats montrent que la valeur le zéro de f(x) converge vers 1 à
% partir du nombre d'itération égale à un

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%*************************
% Etude de la fonction : *
% f(x)=x*sin(x)-x^4 *
%*************************
x=-1:0.1:1;
f=x.*sin(x)-x.^4;
plot(x,f); grid on;
title('Fonction : x*sin(x)-x^4');
%Après exécution du programme ci dessus Et
%D ‘après la courbe obtenue, il est judicieux de choisir un x0=-0.7
%car f(-0.7) est proche de zéro pour avoir une convergence rapide. 


% Recherche d'une approximation de la racine de f(x)=x*sin(x)-x^4
clear all;
clc;
x(1)=-0.7;
e=1e-10;
n=5000;
for i=2:n
f=x(i-1)*sin(x(i-1))-x(i-1)^4;
diff=sin(x(i-1))+x(i-1)*cos(x(i-1))-4*x(i-1)^3;
x(i)=x(i-1)-f/diff;
if abs(x(i)-x(i-1))<=e
xp=x(i);
fprintf('xp=%f\n',x(i));
break;
end
end
disp('Les valeurs successives de x(i) sont :');
x'
% Les résultats montrent que la valeur le zéro de f(x) converge vers -0.928626 à
% partir du nombre d'itération égale à sept

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% UTILISATION DE LA FONCTION fzero DE MATLAB

%*************************
% Etude de la fonction : *
% f(x)=x^3-5x^2+7x-3 *
%*************************

f = @ (x) x.^3-5*x.^2+7*x-3;
z = fzero(f,3) % La solution converge vers 3

%*************************
% Etude de la fonction : *
% f(x)=x*sin(x)-x^4  *
%*************************

f = @ (x) x.*sin(x)-x.^4;
z = fzero(f,-0.7) % La solution converge vers -0.9286

