%This function takes in a key vector and a duration vector and outputs
% the waveform with the ADSR scaling.

function song = Play_song(keys,dur)
for i=1:length(keys)
    y{i}=note(keys(i),dur(i));      %Each array in cell y is a note vector  
  A{i} = linspace(0, 1, 0.1*(length(y{i})));    %rise 10% of signal      
  D{i} = linspace(1, 0.8, 0.15*(length(y{i}))); %drop of 15% of signal
  S{i} = linspace(0.8, 0.8, 0.6*(length(y{i}))); %delay of 60% of signal
  R{i} = linspace(0.8, 0, 0.15*(length(y{i}))); %drop of 15% of signal

    ADSR{i} = [A{i} D{i} S{i} R{i}];    %Defines the ADSR as a cell of ADSR vectors
    x{i}= zeros(size(y{i}));
    temp = x{i};
    temp(1:length(ADSR{i})) = ADSR{i};
    x{i}=temp;
    song{i}=y{i}.*x{i};                 %Each note vector is multiplied by the ADSR vector for improved quality.
end
song = cell2mat(song);
end