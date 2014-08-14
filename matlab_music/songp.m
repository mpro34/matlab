%The following code defines the notes
% %Chris Whiting
 function run = songp()
% %NOTES  f  f  f  f  f  f  f  f  f  f  c  e  g  f  e  g  f  f  f  f  f  f  f
% linea1=[45 45 45 45 45 45 45 45 45 45 40 44 47 45 44 47 45 45 45 45 45 45 45 45 45 45 44 44 44];
% linea2=[45 45 45 45 45 45 45 45 45 45 40 44 47 45 44 47 45 45 45 45 45 45 45 45 45 44 40 44 40 44 40];
% dura1=0.25*ones(1,length(linea1));
% dura2=0.25*ones(1,length(linea2));
% %NOTES  c  -  -  c  -  -  c  -  -  -  -  -  -  -  -  -  c  -  -  c  -  -  c
% lineb1=[40 0 0 40 0 0 40 0 0 0 0 0 0 0 0 0 40 0 0 40 0 0 40 0 0 0 40 51 51];
% lineb2=[40 0 0 40 0 0 40 0 0 0 0 0 0 0 0 0 40 0 0 40 0 0 40 0 0 0 0 0 0 0 0];
% durb1=0.25*ones(1,length(lineb1));
% durb2=0.25*ones(1,length(lineb2));
% 
% linec1=[28 0 0 28 0 0 28 0 0 28 0 0 28 0 39 0 28 33 0 33 0 0 33 0 0 0 32 32 32];
% linec2=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
% durc1=0.25*ones(1,length(linec1));
% durc2=0.25*ones(1,length(linec2));
% 
% lined1=[33 0 0 33 0 0 33 0 0 33 0 0 33 0 32 0 0 0 0 28 0 0 28 0 0 0 28 39 39];
% lined2=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
% durd1=0.25*ones(1,length(lined1));
% durd2=0.25*ones(1,length(lined2));
% 
% 
% linea = [linea1 linea2];
% lineb = [lineb1 lineb2];
% linec = [linec1 linec2];
% lined = [lined1 lined2];
% dura = [dura1 dura2];
% durb = [durb1 durb2];
% durc = [durc1 durc2];
% durd = [durd1 durd2];
% 
% run=Play_song(linea,dura)+Play_song(lineb,durb)+Play_song(linec,durc)+Play_song(lined,durd);
Fs=8000;
n1 = [0:(1/Fs):(1/8)]
n2 = [0:(1/Fs):(1/4)]
n3 = [0:(1/Fs):(1)]

%Create the notes.

note1 = sin(2*pi*220*n1);
note2 = sin(2*pi*220*n2);
note3 = sin(2*pi*(220*(2^(7/12))*n2));
note3 = sin(2*pi*(220*(2^(7/12)))*n2);
note4 = sin(2*pi*(220*(2^(2/12)))*n2);
note5 = sin(2*pi*(220*(2^(3/12)))*n2);
note6 = sin(2*pi*220*n1);

%Generate 0.25 second rest.

rest = zeros(1,(Fs/4));

%Generate song.

run = [note6];
 end

