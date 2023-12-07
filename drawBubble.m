function handle = drawBubble(xCenter, yCenter, radius)
theta=[0:20:360]*pi/180;
x = xCenter + radius*cos(theta);
y = yCenter + radius*sin(theta);
handle = plot(x,y,'w');
set(handle,"LineWidth",3);
endfunction