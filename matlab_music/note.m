%Chris Whiting
%9/24/2012
%LAB 3 : Dr. Marino
%The following code outputs the tone vector of the specified key number and
% for a specified duration.

function tone = note(keynum,dur)
freq= 440*2^((keynum-49)/12);       %Calculates the freq for a given key
%The highest frequency note played in my song was a C6 with 1046.50Hz
% frequency, therefore I chose a fs of around 5*B, where the only criteria
% is for fs to be greater than 2*B.
fs = 5500;                          %The sampling frequency >> 2B  
t = 0:1/fs:dur;                     
tone= sin(2*pi*freq*t);             %Generates the sinusoidal output tone    
end