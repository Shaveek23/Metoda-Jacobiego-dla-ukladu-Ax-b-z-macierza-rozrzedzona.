function [A, b] = wrongMatrixGenerator(size,seed)
%Funkcja generuj¹ca macierz niedominuj¹ca diagonalnie 
%   Detailed explanation goes here
i = speye(size,size); %tworzenie macierzy jednostkowej o wymiarach size x size
i = i.*0.0000001; % macierz musi byæ dominuj¹ca diagonalnie, aby metoda by³a zbie¿na

j = sprandn(size,size,seed); %generowanie macierzy rozrzedzonej o ustalonym seedzie
j = j .* 10000;
A = i + j; %po³¹czenie macierzy jednostkowej z macierz¹ rozrzedzon¹ 

%generowanie wektora pionowego z wyrazami wolnymi
b = rand(size,1);
b = b .* 100;
end

