function individual = DecimalizeIndividual(individualBinary)

    individual=struct('X',bin2real(individualBinary.X),'Y',bin2real(individualBinary.Y));

end