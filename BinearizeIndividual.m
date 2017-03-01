function IndividualBinary = BinearizeIndividual(Individual)
    IndividualBinary=struct('X',real2bin(Individual.X),'Y',real2bin(Individual.Y));
end

