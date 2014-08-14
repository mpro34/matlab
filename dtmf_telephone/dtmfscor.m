%Chris Whiting
%10/25/2012
%This function determines whether a specified piece of a signal is within
%the desired frequency range, by outputing a 1 or 0. Uses a filter.
function  ss = dtmfscor(xx, freq, L, fs)
if (nargin < 4), fs = 8000; end;
fb=freq;
for n=0:1:L-1;
hh(n+1) = (2/L)*cos((2*pi*fb*n)/fs);   
end
ss = (mean(conv(xx,hh).^2) > mean(xx.^2)/5);
end