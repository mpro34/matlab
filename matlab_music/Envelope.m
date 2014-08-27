%The following code plots the ADSR Profile used for FFvii.m

  y=note(40,0.25);
    
    
  A = linspace(0, 1, 0.1*(length(y)));    %rise 10% of signal      
  D = linspace(1, 0.8, 0.15*(length(y))); %drop of 15% of signal
  S = linspace(0.8, 0.8, 0.6*(length(y))); %delay of 60% of signal
  R = linspace(0.8, 0, 0.15*(length(y))); %drop of 15% of signal
 
% By multiplying the above envelope function by the sine wave produced by 
% note.m, the note sounds less artificial.

  ADSR =[A D S R];
  x=zeros(size(y));
  temp=x;
  x(1:length(ADSR)) = ADSR;
  out=y.*x;
  t=ones(length(out));
  plot(out)
  title('ADSR Profile');
  ylabel('E(t)');
  xlabel('t');
  grid; 
  axis([0 1400 0 1]);
  disp('HERE');