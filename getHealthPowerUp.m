function health = getHealthPowerUp (size)

  %right side
  pt1=[size;size;1];
  pt2=[-size;size;1 ];
  pt3=[-size;-size;1 ];
  pt4=[size;-size;1 ];

  health=[pt1,pt2,pt3,pt4];

  

endfunction