function tone = play()

fs=8500;
y=note(40,2);

A = linspace(0, .9, (length(y)*0.25)); %rise 20% of signal
D = linspace(.9, 0.7,(length(y)*0.05)); %drop of 5% of signal
S = linspace(0.7, 0.7,(length(y)*0.40)); %delay of 40% of signal
R = linspace(0.7, 0,(length(y)*0.30)); %drop of 35% of signal
ADSR = [A D S R] ;
disp('HERE:');
disp(ADSR(2));
x = zeros(size(y));
x(1:length(ADSR)) = ADSR;
tone=y.* x;
disp('LENGTH:');
disp(length(ADSR));
disp('SIZE:');
disp(size(y));
end