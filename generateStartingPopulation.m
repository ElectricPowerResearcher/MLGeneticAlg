function startingPopulation=generateStartingPopulation(nrOfIndividuals)
    for i=1:nrOfIndividuals
        startingPopulation(i)=struct('X',-4+(4+4)*rand,'Y',-4+(4+4)*rand);
    end
end