# crabs
Funtion: getTranslation: integer1, integer2, -> matrix
Purpose: number 1 represents the amount to shift in the x diretion and number 2 the amount to shift in the y diretion
getTranslate uses these numbers to create a 3x3 matrix that will translate an objet stored as a 3x3 matrix when it multiplies the object matrix.
Dependencies: None.
Call: T=getTranslation(dx,dy)
Side Effects: None

Function: drawLine: matrix 1, matrix 2, color
Purpose: draws a line from the point of matrix 1 to the point matrix 2 with the given color
Dependencies: None.
Call: handle=drawLine(p,q,myColor)
Side Effects: Draws a line from the points p and q with the entered color

