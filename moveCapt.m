function [ xCapt, yCapt, thetaCapt ] = moveCapt( cmd, x, y, theta ,sizeCapt,height,width);
dTheta = pi/6;
dStep = 50;
if(cmd=="w")
xTemp = x+dStep*cos(theta); 
yTemp = y+dStep*sin(theta);
if(isOnMap(xTemp,yTemp,width,height,sizeCapt))
  xCapt=xTemp;
  yCapt=yTemp;
  thetaCapt=theta;
else
   xCapt=x;
   yCapt=y;
   thetaCapt=theta;

endif
elseif ( cmd == "d") %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta+dTheta;
elseif ( cmd == "a") %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;
else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;
endif
endfunction