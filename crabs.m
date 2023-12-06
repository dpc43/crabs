function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain, hunts for a very clever and powerful crab.
playGame=1;
while(playGame)

%draw start screen
level=drawStartScreen("startScreen.png");

% Draw the game map and initialize map dimensions.
[mapHeight, mapWidth] = drawMap("BGImage.png");

% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 750;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;

%Initialize crab location, heading and size
numCrabs = level;
xCrab = rand(1, numCrabs) * mapWidth;
yCrab = 3 * mapHeight / 4 + rand(1,numCrabs)*mapHeight/4;
thetaCrab = ones(1,numCrabs)*(-pi/2);
crabsCaught = 0;
sizeCrab = 50;
isCrabsCaught=zeros(1,numCrabs);

%Initialize jellyfish
numJelly = level;
xJelly=rand(1,numJelly)*mapWidth;  
yJelly=rand(1,numJelly)*mapHeight;
thetaJelly=-pi/2;
sizeJelly=25;
jellySting=5;

% Draw the captain and initialize graphics handles
[captainGraphics,xNet,yNet] = drawCapt (xCapt, yCapt, thetaCapt, sizeCapt);

%draw crabs
  for k=1:numCrabs  
    crabGraphics(:,k)=drawCrab(xCrab(k),yCrab(k),thetaCrab(k),sizeCrab);
  endfor

%draw jellyfishes
  for j=1:numJelly
    jellyGraphics(:,j)=drawJelly(xJelly(j),yJelly(j),thetaJelly,sizeJelly);
  endfor

%write text to screen
healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', ...
num2str(healthCapt)), 'FontSize', 12, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), ...
strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'red');


%create game loop
while(crabsCaught!=level && healthCapt>0)
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

%read kbhd commands
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
 
%check if a crab is caught
   for k=1:numCrabs
    if(!isCrabsCaught(k) && getDist(xNet,yNet,xCrab(k),yCrab(k))<2*sizeCapt)
    %keep track of how many crabs are caught
      crabsCaught=crabsCaught+1;
      isCrabsCaught(k)=1;
      %erase old crab
      for i=1:length(crabGraphics(:,k))
        delete(crabGraphics(i,k));
      endfor     
    endif
   endfor
   
%make crabs run away from capt   
  for p=1:numCrabs
    if(!isCrabsCaught(p) && getDist(xNet,yNet,xCrab(p),yCrab(p))<7*sizeCapt)
      %erase old crab
      for i=1:length(crabGraphics(:,p))
        delete(crabGraphics(i,p));
      endfor
      % compute the crab’s angle to the net with getTheta and the components suggested above
      thetaCrab(p)=getTheta(xNet-xCrab(p),yNet-yCrab(p));
      cmd="k";
      [xCrab(p),yCrab(p),thetaCrab(p)]=moveCrab(cmd,xCrab(p),yCrab(p),thetaCrab(p),sizeCrab,mapHeight,mapWidth);  
      crabGraphics(:,p)=drawCrab(xCrab(p),yCrab(p),thetaCrab(p),sizeCrab);
    endif
  endfor

fflush(stdout);
pause(.01)
endwhile
playGame=drawEndScreen("startScreen.png",crabsCaught,numCrabs);
endwhile
close all
clear
endfunction