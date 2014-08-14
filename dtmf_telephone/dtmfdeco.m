%Chris Whiting
%10/25/2012
%Returns the key number corresponding to the DTMF waveform, xx.
function key = dtmfdeco(xx,fs)

if (nargin < 3), fs = 8000; end;
tone_pairs = [697  697  697  770  770  770  852  852  852  941  941  941 1209 1336 1477 1209 1336 1477 1209 1336 1477 1336 1209 1477];
L = 100;  %Filter Size
for i=1:1:((length(tone_pairs)/2));
    a = dtmfscor(xx, tone_pairs(i), L, fs);
    b = dtmfscor(xx, tone_pairs(i+12), L, fs);
    if (a==1) %Does the lower frequency match?
        if (b==1)   %Does the upper frequency match?
            if (i==10) %Check for * key
                key = 0;
                break;
            elseif (i==11)     %Check for 0 key
                key = '*';
                break;
            elseif (i==12)             %Check for # key
                key = '#';
                break;
            else 
                key = i;
                break;
            end               %Else continue loop until lower freq and                           
        end                   %upper freq match.
    end
end