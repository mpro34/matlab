%Chris Whiting
%10/25/2012
%Combines dtmfdeco and dtmfscor to output the final array of keys
function keys = dtmfmain(teleKeys)
    fs=8000;%Sampling Freq
    fsi=800;%Silence Freq
    count=0;
    j=0;
    len = length(teleKeys);
   % keyNum = ceil(len/((fs/2)+fsi)); %The amount of keys present in signal
    startKey = ((fs./2)+fsi);
    %Splits the original signal and plays each key-part of the signal into
    %the sigDiv array
    for i=1:1:len/fsi
       count=count+1;
       %Check if 'silence' - <0.4 mean amplitude   
        if (mean(abs(teleKeys((((i-1)*(fs/10))+1) : (i)*(fs/10))))) < 0.4  
            j=j+1;
            sigDiv{j} = teleKeys((1+((i-count)*fsi)) : (((i-1)*fsi)+1));
            count=0;
            %Loops through while updating j, i, and count corresponding to
                %1/10fs samples of the signal each loop iteration to ensure
                %small bandwidth signals and large bandwidth signals are
                %accounted for.
        end
    end
     phoneNum=zeros(1,length(sigDiv));
    for j=1:1:length(sigDiv)
        phoneNum(j) = dtmfdeco(sigDiv{j},fs);  %Assembles phone number with dtmfdeco
%         if (phoneNum(j)==42)                    %Checks for the ascii codes and
%             phoneNum(j)='*';                    %converts to ascii character.
%         elseif (phoneNum(j)==35)
%             phoneNum(j)='#';
%         end
    end
    keys=phoneNum;
end
