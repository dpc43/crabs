function [xHealth,yHealth,thetaHealth] = moveHealthPowerUp(level, x, y, theta, size, height, width)
healthMove =25;
step=healthMove+level;
yHealth=y+step;
xHealth=x;
thetaHealth=theta;
% return a y-position increased by step, but return the same x and theta values
if (yHealth > height-size)
thetaHealth=theta;
% set the returned y-value to be size and return a new random x value between 0 and %width
yHealth=size;
xHealth=rand()*width;
endif
endfunction