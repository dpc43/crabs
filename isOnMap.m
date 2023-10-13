% Created Ken Owens 2023-08-18
%This function checks if a point is within the map boundary
%It returns a 1 if it is and 0 if in is not.
function inBounds = isOnMap(x,y,width,height,buffer)
if( x > buffer && x < width-buffer && y > buffer && y < height-buffer)
inBounds=1;
else
inBounds=0;
endif
endfunction