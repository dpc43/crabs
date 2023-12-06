## Author: Dean Callahan <deancallahan@Deans-MacBook-Pro.local>
## Created: 2023-08-30
function crab = getCrab (crabSize)

%body
crabPt1 = [ crabSize/2; crabSize; 1];
crabPt2 = [ -crabSize/2; crabSize; 1];
crabPt3 = [ -crabSize/2; -crabSize; 1];
crabPt4 = [ crabSize/2; -crabSize; 1];
%claws
crabPt5 = [ 2*crabSize; crabSize/4; 1];
crabPt6 = [ 2*crabSize; -crabSize/4; 1];
%legs
crabPt7 = [0; 1.5*crabSize; 1];
crabPt8 = [-crabSize; 1.5*crabSize; 1];
crabPt9 = [0; -1.5*crabSize; 1];
crabPt10 = [-crabSize; -1.5*crabSize; 1];
crab = [ crabPt1, crabPt2, crabPt3, crabPt4, crabPt5, crabPt6, crabPt7, crabPt8,crabPt9, crabPt10];

endfunction