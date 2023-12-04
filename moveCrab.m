function [ xCrab, yCrab, thetaCrab ] = moveCrab( cmd, x, y, theta,sizeCrab,height,width );
dTheta = pi/6;
dStep = 50;




if( cmd == "i" ) %rotate right
xCrab = x;
yCrab = y;
thetaCrab = theta +dTheta;
elseif ( cmd == "j" ) %move left
xCrab = x+dStep*sin(theta);
yCrab = y;
thetaCrab = theta;
elseif ( cmd == "k" ) %move back
xTemp = x-dStep*cos(theta);
yTemp = y-dStep*sin(theta);
thetaCrab = theta;

if(isOnMap(xTemp,yTemp,width,height,sizeCrab))
  xCrab=xTemp;
  yCrab=yTemp;
  thetaCrab=theta;
else
   xCrab=x;
   yCrab=y;
   thetaCrab=theta;
endif

elseif ( cmd == "l" ) %move right
xCrab = x-dStep*sin(theta);
yCrab = y;
thetaCrab = theta;
elseif ( cmd == "," ) %rotate left
xCrab = x;
yCrab = y;
thetaCrab = theta - dTheta;

else % if none of the cases are true, set the new variables equal to the old inputs.
xCrab = x;
yCrab = y;
thetaCrab = theta;
endif
endfunction