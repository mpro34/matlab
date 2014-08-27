%The following code defines the notes
%Chris Whiting
function run = FFvii()
halfnote=0.5;
quarternote=0.25;
eightnote=0.125;
sixnote=0.0625;

%ONE
%NOTES  f  f  f  f  f  f  f  f  f  f  c  e  g  f  e  g  f  f  f  f  f  f  f
linea1=[57 57 57 57 57 57 57 57 57 57 52 55 58 57 55 59 57 57 57 57 57 57 57 57 57 57 55 55 55];
lineb1=[52 0  0  52 0  0  52 0  0  0  0  0  0  0  0  0  52 0  0  52 0  0  52 0  0  0  52 50 50];
linec1=[40 0  0  40 0  0  40 0  0  40 0  0  40 0  39 0  40 45 0  45 0  0  45 0  0  0  44 44 44];
lined1=[33 0  0  33 0  0  33 0  0  33 0  0  33 0  31 0  0  0  0  40 0  0  40 0  0  0  40 39 39];
%Duration for the 1st line of sheet music
dura1=quarternote*ones(1,length(linea1));
durb1=quarternote*ones(1,length(lineb1));
durc1=quarternote*ones(1,length(linec1));
durd1=quarternote*ones(1,length(lined1));

%TWO
linea2=[57 57 57 57 57 57 57 57 57 57 52 55 58 57 55 59 57 57 57 57 57 57 57 57 57 55 52 55 52 55 52];
lineb2=[52 0  0  52 0  0  52 0  0  0  0  0  0  0  0  0  52 0  0  52 0  0  52 0  0  0  0  0  0  0  0 ];
linec2=[45 0  0  45 0  0  45 0  0  45 0  0  45 0  46 0  45 0  0  45 0  0  45 0  45 44 0  44 0  44 0 ];
lined2=[40 0  0  40 0  0  40 0  0  40 0  0  40 0  42 0  40 0  0  40 0  0  40 0  40 39 0  39 0  39 0 ];
%Duration for the 2nd line of sheet music
dura2=quarternote*ones(1,length(linea2));
durb2=quarternote*ones(1,length(lineb2));
durc2=quarternote*ones(1,length(linec2));
durd2=quarternote*ones(1,length(lined2));

%THREE
linea3=[33 35 35 37 37 39 40 44 45 47 47 48 48 50 52 55 57 59 59 61 61 63 64];
lineb3=[0  0  0  0  0  0  0  0  42 39 39 40 40 44 45 48 53 50 50 53 53 55 57];
linec3=[40 40 0  45 0  45 0  39 37 40 0  37 0  37 40 40 39 39 0  39 0  39 39];
lined3=[0  0  0  40 0  40 0  0  33 37 0  0  0  37 37 35 33 33 0  33 0  33 33];
%Duration for the 3rd line of sheet music
dura3=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];
durb3=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];
durc3=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];
durd3=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];

%FOUR
linea4=[45 57 57 45 57 57 45 57 57 45 47 48 50 48 47 50 48 57 59 61 63 61 59 63 61 57 55 58 60 59 55];
lineb4=[0  52 52 0  52 52 0  52 52 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 ];
linec4=[40 0  0  40 0  0  40 0  0  40 0  0  40 0  42 0  40 0  0  40 0  0  40 0  0  40 42 0  42 0  42];
lined4=[33 0  0  33 0  0  33 0  0  33 0  0  33 0  34 0  33 0  0  33 0  0  33 0  0  33 34 0  35 0  35];
%Duration for the 4th line of sheet music
dura4=quarternote*ones(1,length(linea4));
durb4=quarternote*ones(1,length(lineb4));
durc4=quarternote*ones(1,length(linec4));
durd4=quarternote*ones(1,length(lined4));

%FIVE
linea5=[33 35 35 37 37 39 40 44 45 47 47 48 48 50 52 55 57 59 59 61 61 63 64];
lineb5=[0  0  0  0  0  0  0  0  42 39 39 40 40 44 45 48 53 50 50 53 53 55 57];
linec5=[45 45 0 45  0  45 45 39 42 42 0  42 0  42 42 40 39 39 0  39 0  39 39];
lined5=[40 40 0 40  0  40 0  0  37 37 0  37 0  37 37 35 33 33 0  33 0  33 33];
%Duration for the 5th line of sheet music
dura5=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];
durb5=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];
durc5=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];
durd5=[0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.5 0.5  0.75 0.75 0 0.75 0 0.75 0.75];

%Combines all the LINE arrays and DUR arrays
linea = [linea1 linea2 linea3 linea4 linea5];
lineb = [lineb1 lineb2 lineb3 lineb4 lineb5];
linec = [linec1 linec2 linec3 linec4 linec5];
lined = [lined1 lined2 lined3 lined4 lined5];
dura = [dura1 dura2 dura3 dura4 dura5];
durb = [durb1 durb2 durb3 durb4 durb5];
durc = [durc1 durc2 durc3 durc4 durc5];
durd = [durd1 durd2 durd3 durd4 durd5];

%Adds all of the generated waves together to play the song.
run=Play_song(linea,dura)+Play_song(lineb,durb)+Play_song(linec,durc)+Play_song(lined,durd);

end

