# crabs
Funtion: getTranslation: integer1, integer2, -> matrix
Purpose: number 1 represents the amount to shift in the x diretion and number 2 the amount to shift in the y diretion
getTranslate uses these numbers to create a 3x3 matrix that will translate an objet stored as a 3x3 matrix when it multiplies the object matrix.
Dependencies: None.
Call: T=getTranslation(dx,dy)
Side Effects: None

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
