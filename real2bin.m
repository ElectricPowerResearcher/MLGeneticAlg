%%REAL->binary
function a=real2bin(x)
    %temp lets work with nonnegative
    foox = abs(x);
    %czesc calkowita:
    calkowita=floor(foox);
    %czesc ulamkowa:
    ulamkowa = (foox - calkowita);
    %MSB
    temp1 = ulamkowa*2;
    temp2 = floor(temp1);
    ulamkowastr(1)=temp2;
    %LSB
    ulamkowa2 = temp1-temp2;
    temp3=ulamkowa2*2;
    temp4=floor(temp3);
    ulamkowastr(2)= temp4;
    %%
    calkowita=num2cell(dec2bin(calkowita,3)); %separate str to individual chars
    calkowita = cellfun(@str2num,calkowita); %convert each char cell to numerical cell
    if(x<0) % sign decode
        sign=1;
    else 
        sign=0;
    end
    
    a=[sign,calkowita,ulamkowastr];
end
    
    
    
    
    
    
