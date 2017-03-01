function a=bin2real(x)
    %convert the int part of the bits
    integer = x(2:4); % get only the int part
    integer=fliplr(integer);% reverse array for the conversion simplicty
    result=0;
    resultf=0;
    for e=1:3
        result=result+(integer(e))*2^(e-1);
    end
    %convert the frac part of the bits
    frac = x(5:6); % get the onyl frac part
    frac=fliplr(frac);% reverse array for the conversion simplicty
    for e=1:2
        resultf=resultf+(frac(e))*2^(e-1);
    end
    resultf=resultf/2^(2);
    a=result+resultf;
    %check the sign
    if(x(1)==1)
      a=a*-1;
    end
end