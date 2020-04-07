function [A, b] = sparseMatrixGenerator(size,seed)
%Generator macierzy rozrzedzonej A oraz wektora pionowego wyraz�w wolnych b

i = speye(size,size); %tworzenie macierzy jednostkowej o wymiarach size x size
i = i.*900; % macierz musi by� dominuj�ca diagonalnie, aby metoda by�a zbie�na

j = sprandn(size,size,seed); %generowanie macierzy rozrzedzonej o ustalonym seedzie
j = j .* 10;
A = i + j; %po��czenie macierzy jednostkowej z macierz� rozrzedzon� - gwarancja dominuj�cej diagonalnie

%generowanie wektora pionowego z wyrazami wolnymi
b = rand(size,1);
b = b .* 100;
end

