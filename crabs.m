function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 750;
thetaCapt = -pi/2;
sizeCapt = 50;

%Initialize crab location, heading and size
xCrab=1000;
yCrab=1200;
thetaCrab=-pi/2;
sizeCrab=50;


% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

captainGraphics = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

crabGraphics=drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);
%*******************************************************
cmd="null";
while(cmd!="Q")
  cmd=kbhit();
  if(cmd=="w"||cmd=="a"||cmd=="d")

   for i=1:length(captainGraphics)
     set(captainGraphics(i),'Visible','off');
   endfor
   %move capt
   [xCapt,yCapt,thetaCapt]=moveCapt(cmd,xCapt,yCapt,thetaCapt,sizeCapt,mapHeight,mapWidth);
   %draw new capt
   captainGraphics=drawCapt(xCapt,yCapt,thetaCapt,sizeCapt);
   
  elseif (cmd == "i" || cmd == "j" || cmd == "k" || cmd == "l" || cmd ==",") % respond crabmoved
%erase old crab
   for i=1:length(crabGraphics)
    set(crabGraphics(i),'Visible','off');
   endfor
%move crab
   [xCrab,yCrab,thetaCrab] = moveCrab(cmd,xCrab,yCrab,thetaCrab,sizeCrab,mapHeight,mapWidth);
%draw new captain and crab
   crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

  endif
endwhile
close all
clear
endfunction