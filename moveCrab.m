function [ xCrab, yCrab, thetaCrab ] = moveCrab( cmd, x, y, theta );
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
xCrab = x-dStep*cos(theta);
yCrab = y-dStep*sin(theta);
thetaCrab = theta;
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