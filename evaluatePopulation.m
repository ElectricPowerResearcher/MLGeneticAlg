function fitnesses=evaluatePopulation(population,func)
    %% function evaluation
    z=zeros(size(population,2),1);
    for i=1:size(population,2)
        z(i)=func(population(i));
    end
    %% finding square errors
    highestz=z(find(z==max(z),1));
    errors=zeros(size(population,2),1);
    for i=1:size(population,2)
        errors(i)=(highestz-z(i))^2;
    end
    %% conver square errors so that the lower square error
    % the bigger fitness
    highestError=errors(find(errors==max(errors),1));
    for i=1:size(population,2)
        fitnesses(i)=highestError-errors(i)+1;
    end
    %calculate probabilities according to fitnesses
    SumofFitnesses=sum(fitnesses);
    for i=1:size(population,2)
        fitnesses(i)=fitnesses(i)/SumofFitnesses;
    end
    
end