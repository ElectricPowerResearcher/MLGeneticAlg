%consts:
maxNrOfGenerations = 100;
populationSize=6; % must be integer multiple of 2
generation=0;
%%
pool = generateStartingPopulation(populationSize); % generate chromosomes in the pool
fitnesses=evaluatePopulation(pool,@myFunction); % 
bestAnswer=pool(1); % just init bestAnswer with 1'st Individual from starting pool
newPopulation=struct('X',{},'Y',{}); % just init empty next genereation
while(generation<=maxNrOfGenerations ) 
    generation=generation+1;
    if(generation~=1) % if it's not the starting generation
        pool=newPopulation;
        newPopulation=struct('X',{},'Y',{}); % empty new pop
    end
    %loop while entire pool hasn't been processed
    for i=1:populationSize/2
        A=Roulette(pool,fitnesses);% select 2 memebers
        B=Roulette(pool,fitnesses);
        Ab=BinearizeIndividual(A); % binearizeIndividual is just a wrapper for real2bin
        Bb=BinearizeIndividual(B);
        [newAb,newBb] = crossing(Ab,Bb); %cross them
        newAb = mutation(newAb);% mutate each one
        newBb = mutation(newBb);
        newA=DecimalizeIndividual(newAb);% just a wrapper for bin2real
        newB=DecimalizeIndividual(newBb);
        %calculate best answer yet
        if myFunction(newA)>myFunction(bestAnswer)
            bestAnswer=newA;
            foundin=generation;
        end
        if myFunction(newB)>myFunction(bestAnswer)
            bestAnswer=newB;
            foundin=generation;
        end
        newPopulation=[newPopulation,newA,newB]; %add them to the new pool
        
    end
    fitnesses=evaluatePopulation(newPopulation,@myFunction);
end
%print number of generations and solutions
disp(bestAnswer);
disp(myFunction(bestAnswer));
disp(foundin);
