function theta=getTheta(x,y)
if ( x ==0 || y==0) %on the x and y axis
  if( x == 0 && y == 0) % at the origin and undefined angle. Just let it be zero.
    theta =0;
  elseif( y == 0 && x!=0) % on the x-axis theta is either 0 or pi
    if( x > 0 )
      theta =0;
    else
      theta = pi;
    endif
  elseif (x == 0 && y!=0) % on the y-axis theta is either p/2 pr 3pi/2
    if(y > 0 )
      theta = pi/2;
    else
      theta = 3*pi/2;
    endif
 endif

else % off the x or y axis

%compute the reference angle
  alpha = atan(abs(y/x));
  if ( x > 0 )
    if( y > 0 ) %first qandrant
      theta = alpha;
    else %fourth quadrant
      theta = 2*pi - alpha;
    endif
  else
    if( y > 0 ) %second quadrant
      theta = pi - alpha;
    else %third quadrant
      theta = pi + alpha;
     endif
  endif
endif
endfunction