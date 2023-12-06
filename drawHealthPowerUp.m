function healthHandle = drawHealthPowerUp (x,y,theta,size)
  health = getHealthPowerUp(size);
  R = getRotation(theta);
  healthRotated = R*health;
  T = getTranslation(x,y);
  health = T*healthRotated;
  pt1=health(:,1);
  pt2=health(:,2);
  pt3=health(:,3);
  pt4=health(:,4);
  
  healthHandle(1)=drawLine(pt1,pt2,'m');
  healthHandle(2)=drawLine(pt2,pt3,'m');
  healthHandle(3)=drawLine(pt3,pt4,'m');
  

endfunction