function level = drawStartScreen (imgName)
% Draw a start screen containing the message "Enter a level 1-9” and read the users response.
drawMap(imgName);
hold on
% write myMessage at messageLoc
myMessage = ['Enter a level 1-9 '];
messageLoc = [450,750];
myText = text(messageLoc(1), messageLoc(2), myMessage, 'FontSize', 30, 'Color', 'red');
level = getLevel();
% delete the previous message and write a new one.
delete(myText);
myMessage = ['Ok, Level = ', ' ',num2str(level)];
myText = text(messageLoc(1), messageLoc(2), myMessage, 'FontSize', 30, 'Color', 'red');
pause(2)
hold off
endfunction