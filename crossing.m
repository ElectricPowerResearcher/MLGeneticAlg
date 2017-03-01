function [individualA,individualB]=crossing(parentA,parentB)
    individualA=parentA; %init output structures
    individualB=parentB; 
    for i=1:3
        individualA.X(i)=parentA.X(i);
        individualA.Y(i)=parentA.Y(i);
        individualB.X(i)=parentB.X(i);
        individualB.Y(i)=parentB.Y(i);
    end
    for i=4:6
        individualA.X(i)=parentB.X(i);
        individualA.Y(i)=parentB.Y(i);
        individualB.X(i)=parentA.X(i);
        individualB.Y(i)=parentA.Y(i);
    end
end
