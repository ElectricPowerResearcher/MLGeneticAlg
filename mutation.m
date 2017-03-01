function result=mutation(individual)
    temp=individual.X;
    for j=1:6 %mutate Xs
        probability=rand;
        if probability<0.02
            temp(j)=~temp(j);
        end
    end 
    individual.X=temp;
    temp=individual.Y;
    for j=1:6 %mutate Ys
        probability=rand;
        if probability<0.02
            temp(j)=~temp(j);
        end
    end
    individual.X=temp;
    result=individual;
end