function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta ,height,width);
dTheta = pi/6;
dStep = 50;
inBounds=isOnMap(x,y,width,height,30);
if( cmd == "w" && inBounds==0) %move forward

xCapt = x+dStep*cos(theta); 
yCapt = y+dStep*sin(theta);
thetaCapt = theta;
elseif ( cmd == "d" ) %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;
elseif ( cmd == "a" ) %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;
else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif
endfunction