%tester.m
 
 %dtmfscor(a, 570, 50, 8000)
%dtmfdeco(a,8000)
%sound(dtmfdial([9 4 9 4 1 3 5 4 9 2]), 8000)
% dtmfdial(['*' 1 4])
% plot(dtmfdial(['*' 1 4]))
dtmfmain(dtmfdial([1 2 5 5 5 2 6 1 7 1]))
plot(dtmfdial([1 2 '*']))