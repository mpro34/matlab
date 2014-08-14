%Play_scale.m
%keys:C  D  E  F  G  A  B  C
%Utilizes the note.m function to play the scales
% by concatenating the tone vectors or 'tones' vector
function tones = Play_scale()
keys=[40 42 44 45 47 49 51 52];     %The keys corresponding to a scale
dur=0.25*ones(1,length(keys));      %Vector of corresponding key durations
for i=1:length(keys)                %For loop that places values in tones
    tones{i}=note(keys(i),dur(i));  % as a cell.
end
tones=cell2mat(tones);              %Converts from a tones cell to a tones 
end                                 % vector.