%Chris Whiting
%10/25/2012
%dtmfdial.m
%Creates a tone vector from by choosing the corresponding elements
% in the DTMF array and contencating them to one tone array, with silences
function teleKeys = dtmfdial(keys)
dur1=0.5;      %Vector of corresponding key durations
fs=8000;
DTMF = [697 770 852 1209 1336 1477;      %two-dimensional array of DTMF frequencies
        697 770 941 1336 1477 1209;
        697 852 941 1477 1209 1336;
        770 852 941 1209 1336 1477];
t=0:1/fs:dur1;
j=0;
for i=1:length(keys)
   
    if keys(i)==0                   %Checks if the key press is not a number
        keys(i)=11;
    end
    if keys(i)=='*'
        keys(i)=10;
    end
    if keys(i)=='#'
        keys(i)=12;
    end
    teleKeys{i+j} = (sin(2*pi*DTMF(keys(i))*t) + sin(2*pi*DTMF(keys(i)+12)*t))./2;
    j=j+1;
end
dur2=0.1*fs;
for i=2:2:j+j             %Adds a 0.1 sec silence delay after each tone  
    teleKeys{i} = zeros(1,dur2); %1000 is 0.1 of fs=8000.
end   %Converts from a tones cell to a tones vector 
teleKeys = cell2mat(teleKeys);
end
