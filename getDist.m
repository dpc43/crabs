function[dist]=getDist(x1,y1,x2,y2)
leg1=x2-x1;
leg2=y2-y1;
dist= sqrt(leg1^2+leg2^2);
