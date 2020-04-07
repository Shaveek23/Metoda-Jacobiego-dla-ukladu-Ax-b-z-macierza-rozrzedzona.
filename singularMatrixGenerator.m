function [A, b] = singularMatrixGenerator(size,seed)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
j = sprandn(size,size,seed);
%generowanie macierzy osobliwej
A = sprand(size,size,seed);
A(end,:) = sum(A);

%generowanie wektora pionowego z wyrazami wolnymi
b = rand(size,1);
b = b .* 100;
end

