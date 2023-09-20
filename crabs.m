function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = pi/2;
sizeCapt = 50;




% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

captainGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt)
%*******************************************************
endfunction
