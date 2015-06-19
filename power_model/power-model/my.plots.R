# Categorical Color Schemes
cat011 = rgb(1,0.933,0.6);	#orange
cat012 = rgb(1,0.6,0.2);
cat021 = rgb(0.82,0.82,0.82);		#gray
cat022 = rgb(0.46,0.46,0.46);
cat031 = rgb(0.9,1,0.7);		#green
cat032 = rgb(0.525,0.7,0.175);
cat041 = rgb(0.7,0.9,1);		#blue
cat042 = rgb(0.175,0.525,0.7);
cat051 = rgb(1.0,0.88,0.1);		#gold
cat052 = rgb(0.54,0.458,0);
cat061 = rgb(1,0.7,0.7);    	#red
cat062 = rgb(0.7,0.175,0.175);
colcat = c(cat011, cat012, cat021, cat022, cat031, cat032, cat041, cat042, cat051, cat052, cat061, cat062);

# Diverging Color Schemes
steppedred01 = rgb(0.6,0.06,0.06);
steppedred02 = rgb(0.7,0.175,0.175);
steppedred03 = rgb(0.8,0.32,0.32);
steppedred04 = rgb(0.9,0.495,0.495);
steppedred05 = rgb(1,0.7,0.7);
colsteppedred = c(steppedred01, steppedred02, steppedred03, steppedred04, steppedred05);

steppedgreen01 = rgb(0.42,0.6,0.06);
steppedgreen02 = rgb(0.525,0.7,0.175);
steppedgreen03 = rgb(0.64,0.8,0.32);
steppedgreen04 = rgb(0.765,0.9,0.495);
steppedgreen05 = rgb(0.9,1,0.7);
colsteppedgreen = c(steppedgreen01, steppedgreen02, steppedgreen03, steppedgreen04, steppedgreen05);

steppedblue01 = rgb(0.06,0.42,0.6);
steppedblue02 = rgb(0.175,0.525,0.7);
steppedblue03 = rgb(0.32,0.64,0.8);
steppedblue04 = rgb(0.495,0.765,0.9);
steppedblue05 = rgb(0.7,0.9,1);
colsteppedblue = c(steppedblue01, steppedblue02, steppedblue03, steppedblue04, steppedblue05);

b10 = rgb(0.9,1,1);
b09 = rgb(0.8,0.983,1);
b08 = rgb(0.7,0.95,1);
b07 = rgb(0.6,0.9,1);
b06 = rgb(0.5,0.833,1);
b05 = rgb(0.4,0.75,1);
b04 = rgb(0.3,0.65,1);
b03 = rgb(0.2,0.533,1);
b02 = rgb(0.1,0.4,1);
b01 = rgb(0,0.25,1);
colblue = c(b01, b02, b03, b04, b05, b06, b07, b08, b09, b10);

b2g01 = rgb(0,0.167,1);
b2g02 = rgb(0.1,0.4,1);
b2g03 = rgb(0.2,0.6,1);
b2g04 = rgb(0.4,0.8,1);
b2g05 = rgb(0.6,0.933,1);
b2g06 = rgb(0.8,1,1);
b2g07 = rgb(1,1,0.8);
b2g08 = rgb(1,0.933,0.6);
b2g09 = rgb(1,0.8,0.4);
b2g10 = rgb(1,0.6,0.2);
b2g11 = rgb(1,0.4,0.1);
b2g12 = rgb(1,0.167,0);
colb2g = c(b2g01, b2g02, b2g03, b2g04, b2g05, b2g06, b2g07, b2g08, b2g09, b2g10, b2g11, b2g12);

defaultTwoBR = c(steppedblue04, steppedred01);
defaultTwoGR = c(steppedgreen03, steppedred01);
defaultTwoBG = c(steppedblue04, steppedgreen01);
defaultTwoBB = c(steppedblue04, steppedblue01);
defaultTwoGG = c(steppedgreen03, steppedgreen01);
defaultTwoRR = c(steppedred04, steppedred01);

# Line Style
#0=blank, 1=solid, 2=dashed, 3=dotted, 4=dotdash, 5=longdash, 6=twodash
lty = c(1, 2, 4, 3, 5);

# Point Style
#21=crcle, 24=triangle point-up, 22=square, 23=diamond, 25=triangle point down, 8=star sign
#3=cross, 4=cross v2, 7=square w/ cross v2, 10=circle w/ cross, 12=square w/ cross, 13=circle w/ cross v2
pch_hollow = c(21, 24, 22, 23, 25);
pch_cross = c(4, 3, 13, 7, 10, 12);


