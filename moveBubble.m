function [xBubble,yBubble] = moveBubble(x, y, xMouth,yMouth, size)
bubbleMove =45;
size=size*rand();
step=bubbleMove;
yBubble=y-step;
xBubble=x;
% return a y-position increased by step, but return the same x and theta values
if (yBubble < size)
% set the returned y-value to be size and return a new random x value between 0 and %width
yBubble=yMouth;
xBubble=xMouth;
endif
endfunction