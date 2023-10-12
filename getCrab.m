## Author: Dean Callahan <deancallahan@Deans-MacBook-Pro.local>
## Created: 2023-08-30
function crab = getCrab (crabSize)

%Crab test
crabPt1=[crabSize;crabSize;1];
crabPt2=[-crabSize;crabSize;1];
crabPt3=[-crabSize;-crabSize;1];
crabPt4=[crabSize;-crabSize;1];



%captain matrix
crab = [crabPt1, crabPt2,crabPt3,crabPt4];
endfunction