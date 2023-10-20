function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta ,sizeCrab,height,width);
dTheta = pi/6;
dStep = 50;
inBounds=isOnMap(x,y,width,height,sizeCrab);
if( cmd == "w" && inBounds==1) %move forward

xCapt = x+dStep*cos(theta); 
yCapt = y+dStep*sin(theta);
thetaCapt = theta;
elseif ( cmd == "d" && inBounds==1) %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;
elseif ( cmd == "a" && inBounds==1) %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;
else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif
endfunction