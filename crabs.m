function crabs ()
playGame=1;
while(playGame)
%draw start screen
level=drawStartScreen("startScreen.png");
crabsCaught = 0;

numCrabs = level;
numJelly = level;
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight, mapWidth] = drawMap("BGImage.png");
% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 750;

thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;
%Initialize crab location, heading and size
xCrab = rand(1, numCrabs) * mapWidth;
yCrab = 3 * mapHeight / 4 + rand(1,numCrabs)*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
crabsCaught = 0;
sizeCrab = 50;
isCrabsCaught=zeros(1,numCrabs);

%Initialize jellyfish
xJelly=rand(1,numJelly)*mapWidth;  

yJelly=rand(1,numJelly)*mapHeight;
thetaJelly=-pi/2;
sizeJelly=25;
jellySting=2;

% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.

[captainGraphics,xNet,yNet] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);
%draw crabs

  for k=1:numCrabs  
    crabGraphics(:,k)=drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
  endfor

  for j=1:numJelly
  jellyGraphics(:,j)=drawJelly(xJelly(j),yJelly(j),thetaJelly,sizeJelly);
  endfor
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), ...
strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


while(crabsCaught!=level)

%*******************************************************
%while(crabsCaught!=level)
commandwindow();

%remove old and plot new health and points status to screen
delete(healthStatus);
delete(crabsCaughtStatus);
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


% erase old jellyfish
for j=1:numJelly

for i=1:length(jellyGraphics(:,j))
delete(jellyGraphics(i,j));
endfor

if (getDist(xJelly(j),yJelly(j),xCapt,yCapt) < 3*sizeCapt )
healthCapt = healthCapt - jellySting;
endif



% move jellyfish
[xJelly(j),yJelly(j),thetaJelly] = moveJelly(level, xJelly(j), yJelly(j),thetaJelly, sizeJelly,mapHeight,mapWidth);
% draw jellyfish
jellyGraphics(:,j) = drawJelly(xJelly(j),yJelly(j),thetaJelly,sizeJelly);

endfor

  cmd=kbhit(1);
  if(cmd=='Q')
    
    break;
  
  
  elseif(cmd=="w"||cmd=="a"||cmd=="d")

   for i=1:length(captainGraphics)
     delete(captainGraphics(i));
   endfor
   %move capt
   [xCapt,yCapt,thetaCapt]=moveCapt(cmd,xCapt,yCapt,thetaCapt,sizeCapt,mapHeight,mapWidth);
   %draw new capt
   [captainGraphics,xNet,yNet]=drawCapt(xCapt,yCapt,thetaCapt,sizeCapt);
   
 endif
 
 
   for k=1:numCrabs
   if(!isCrabsCaught(k) && getDist(xNet,yNet,xCrab(k),yCrab(k))<2*sizeCapt) %crab is caught
    %keep track of how many crabs are caught
    crabsCaught=crabsCaught+1;
    isCrabsCaught(k)=1;
    %erase old crab
    for i=1:length(crabGraphics(:,k))
      delete(crabGraphics(i,k));
    endfor     
    endif
   endfor
   
   
 for p=1:numCrabs
   if(!isCrabsCaught(p) && getDist(xNet,yNet,xCrab(p),yCrab(p))<7*sizeCapt)
 
    %erase old crab
    for i=1:length(crabGraphics(:,p))
      delete(crabGraphics(i,p));
    endfor
    % compute the crab’s angle to the net with getTheta and the components suggested above
    thetaCrab(p)=getTheta(xNet-xCrab(p),yNet-yCrab(p));
    % call moveCrab(). To move backwards use cmd =”k”
    cmd="k";
    [xCrab(p),yCrab(p),thetaCrab(p)]=moveCrab(cmd,xCrab(p),yCrab(p),thetaCrab(p),sizeCrab,mapHeight,mapWidth);
    
    % draw the crab as already done in crabs
    crabGraphics(:,p)=drawCrab(xCrab(p),yCrab(p),thetaCrab(p),sizeCrab);
    endif
endfor
 
 
 
 


fflush(stdout);
pause(.01)
%endwhile

endwhile

playGame=drawEndScreen("startScreen.png",crabsCaught,numCrabs);
endwhile
close all
clear
endfunction