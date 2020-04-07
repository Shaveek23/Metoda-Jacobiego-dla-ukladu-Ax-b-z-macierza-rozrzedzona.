function [A, b] = sparseMatrixGenerator(size,seed)
%Generator macierzy rozrzedzonej A oraz wektora pionowego wyrazów wolnych b

i = speye(size,size); %tworzenie macierzy jednostkowej o wymiarach size x size
i = i.*900; % macierz musi byæ dominuj¹ca diagonalnie, aby metoda by³a zbie¿na

j = sprandn(size,size,seed); %generowanie macierzy rozrzedzonej o ustalonym seedzie
j = j .* 10;
A = i + j; %po³¹czenie macierzy jednostkowej z macierz¹ rozrzedzon¹ - gwarancja dominuj¹cej diagonalnie

%generowanie wektora pionowego z wyrazami wolnymi
b = rand(size,1);
b = b .* 100;
end

