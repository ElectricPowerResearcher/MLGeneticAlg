function newPopulation = generateNewPopulation(prevPopulation,errors)
    newPopulation = zeros(size(prevPopulation));
    for i=1:size(prevPopulation)
        father = roulette(prevPopulation,errors);
        mother = roulette(prevPopulation,errors);
        newEntity = crossing(father,mother);
    end
    
end