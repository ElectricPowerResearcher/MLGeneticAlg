function Individual =  Roulette(population,fitnesses)
foo = 0;%init
addedProbabilities = zeros(size(population,2),2);%init
fitnesses = fitnesses/sum(fitnesses); % make sure fitnesses are in correct form

for i= 1:size(population,2) % cumulative probabilities
    addedProbabilities(i) = foo + fitnesses(i);
    foo = addedProbabilities(i);
end

rnd = rand();
for i = 1:size(population,2)% select individual
    if rnd<addedProbabilities(i)
        Individual = population(i);
        return;
    end
end