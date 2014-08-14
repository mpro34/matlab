%LAB #3 
%Chris Whiting
%MATLAB Music

freq=329.63;            %Frequency of Note E4
duration=1;             %In seconds
fs=6000;                %Sampling Frequency(fs>>2*B)B is the highest played f.
t=[0:1/fs:duration];   %Plays the note for 1 Second
y = sin(2*pi*freq*t);
soundsc(y)