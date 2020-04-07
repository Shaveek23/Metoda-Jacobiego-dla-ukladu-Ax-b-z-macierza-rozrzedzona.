%% skrypt realizuj¹cy program: Metoda Jacobiego dla uk³adów równañ Ax=b dla macierzy rozrzedzonych

toll = 0.000001;
max_iter = 100;
%seed = 0.0000001;
seed = 0.0001;

%size = 100;
% size = 100*100;
 size = 100*1000;
 %size = 1000*1000;

% generowanie danych wejœciowych
%[a b] = sparseMatrixGenerator(size,seed);
[a b] = wrongMatrixGenerator(size,seed);
%[a b] = singularMatrixGenerator(size,seed);

%sprawdzenie czy macierz jest osobliwa
if (det(a) == 0)
    disp('Macierz jest osobliwa, nie da siê jej odwróciæ!');
    return;
end

%rozdzielenie macierzy na 3 sk³adowe: górn¹ - u; doln¹ - l; diagonalê - d;
l = tril(a,-1);
u = triu(a, +1);
d = diag(diag(a));
dd = inv(d);

%inicjalizowanie punktów pocz¹tkowych
xk = zeros(size,1);
xkk = ones(size,1);

tic
% metoda Jacobiego wraz ze STOPem
counter = 0;
while ( norm(xk-xkk)>= toll && counter < max_iter)
    xk=xkk;
    xkk = (-1).*dd*(l + u)*xk + dd*b;
    counter = counter + 1;
end   
ile_1 = toc;

if counter >= 1000
   disp("Przekroczono dopuszczaln¹ liczbê iteracji!!!"); 
   return;
end
%wyswietlanie rozwi¹zañ uk³adu
display(xkk);

%sprawdzenie:
disp('SPRAWDZENIE funkcj¹ A\b:');
tic 
x_correct = a\b;
ile_2 = toc;
display(x_correct);
