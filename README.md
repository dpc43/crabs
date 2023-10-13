# crabs
Funtion: getTranslation: integer1, integer2, -> matrix
Purpose: number 1 represents the amount to shift in the x direction and number 2 the amount to shift in the y direction. getTranslate uses these numbers to create a 3x3 matrix that will translate an object stored as a 3x3 matrix when it multiplies the object matrix.
Dependencies: None.
Call: T=getTranslation(dx,dy)
Side Effects: Non

Function: drawLine: vector, vector, color-> graphics handle
Purpose: draws a line from one vector to another the vector with the given color
Dependencies: None.
Call: handle=drawLine(p,q,myColor)
Side Effects: Draws a line from the points p and q with the entered color

Function: getCapt: integer-> captain at origin
Purpose: creates the captain with the given size
Dependencies: None.
Call: capt=getCapt(captSize)
Side Effects: Draws the captain at the origin

Function: drawMap: image file->height, width
Purpose: creates the background for the game using the image and creates the coordinate system
Dependancies: None.
Call: [height,width]=drawMap(imageName)
Side Effects: Draws the background for the game

Funtion: getRotation: integer1 -> matrix
Purpose: number 1 represents the amount to rotate the captain by. getRotation uses this number to create a 3x3 matrix that will rotate an object stored as a 3x3 matrix when it multiplies the object matrix.
Dependencies: None.
Call: R=getRotation(dTheta)
Side Effects: None


