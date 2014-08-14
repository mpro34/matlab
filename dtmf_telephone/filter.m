%Generates filters for decoding DTMF signals
%L is 50 for this case
L=50;
fs=8000;
%Generate h vector for 770hz
fb=770;
for n=0:1:L-1;
    h770(n+1) = (2/L)*cos((2*pi*fb*n)/fs)
end
subplot(2,1,1);stem(h770);title('h770');

%Generate h vector for 1336hz
fb=1336;
for n=0:1:L-1;
    h1336(n+1) = (2/L)*cos((2*pi*fb*n)/fs);
end
subplot(2,1,2);stem(h1336);title('h1336');axis([0 100 0 .05]);

fs = 8000;
ww = 0:(pi/256):pi;
ff = ww/(2*pi)*fs;
H1 = freqz(h770,1,ww);
subplot(3,2,1);
plot(ff,abs(H1)); grid on;  %Plots magnitude plot of h770
title('h770 Magnitude Plot L50');
subplot(3,2,2);
H2 = freqz(h1336,1,ww);
plot(ff,abs(H2)); grid on;  %Plots magnitude plot of h1336
title('h1336 Magnitude Plot L50');

%L is 10 for this case
L=10;
fs=8000;
%Generate h vector for 770hz
fb=770;
for n=0:1:L-1;
    h770(n+1) = (2/L)*cos((2*pi*fb*n)/fs);
end
%Generate h vector for 1336hz
fb=1336;
for n=0:1:L-1;
    h1336(n+1) = (2/L)*cos((2*pi*fb*n)/fs);
end
%stem(h770);

fs = 8000;
ww = 0:(pi/256):pi;
ff = ww/(2*pi)*fs;
H1 = freqz(h770,1,ww);
subplot(3,2,3);
plot(ff,abs(H1)); grid on;  %Plots magnitude plot of h770
title('h770 Magnitude Plot L10');
subplot(3,2,4);
H2 = freqz(h1336,1,ww);
plot(ff,abs(H2)); grid on;  %Plots magnitude plot of h1336
title('h1336 Magnitude Plot L10');

%L is 100 for this case
L=100;
fs=8000;
%Generate h vector for 770hz
fb=770;
for n=0:1:L-1;
    h770(n+1) = (2/L)*cos((2*pi*fb*n)/fs);
end
%Generate h vector for 1336hz
fb=1336;
for n=0:1:L-1;
    h1336(n+1) = (2/L)*cos((2*pi*fb*n)/fs);
end
%stem(h770);

fs = 8000;
ww = 0:(pi/256):pi;
ff = ww/(2*pi)*fs;
H1 = freqz(h770,1,ww);
subplot(3,2,5);
plot(ff,abs(H1)); grid on;  %Plots magnitude plot of h770
title('h770 Magnitude Plot L100');
subplot(3,2,6);
H2 = freqz(h1336,1,ww);
plot(ff,abs(H2)); grid on;  %Plots magnitude plot of h1336
title('h1336 Magnitude Plot L100');

