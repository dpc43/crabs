function crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab)
% In the future, this function will draw the captain at the given
% position (xCapt ,  yCapt) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith  vector entry contains the graphics handle of ith line of the captain.
crab=getCrab(sizeCrab);
R=getRotation(thetaCrab);
crabRotated=R*crab;
T=getTranslation(xCrab, yCrab);
crab=T*crabRotated;
% Use your code from last week to get the captain matrix
% for a captain of dimension sizeCapt. Notice that
% sizeCapt is a parameter passed into drawCapt.

%capt = getCapt(sizeCapt);

%rotate captain
%R=getRotation(thetaCapt);
%captRotated=R*capt;

%shift captain to new location
%T=getTranslation(xCapt,yCapt);
%capt=T*captRotated;


% TODO : Rotate captain from zero heading to heading thetaCapt

% TODO : Shift the captain from (0 , 0) to (xCapt ,  yCapt)


% Extract the captain points from the captain matrix capt.
  pt1=crab( : , 1);
  pt2=crab( : , 2);
  pt3=crab(: , 3);
  pt4=crab(: , 4);

  % Draw the captain and set the return vector of graphics handles.
   crabGraphics(1) = drawLine(pt1 , pt2 , "k");
   crabGraphics(2)= drawLine(pt3, pt4, "k");
endfunction
