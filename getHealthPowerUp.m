function health = getHealthPowerUp (size)

  %right side
  pt1=[size;size;1];
  pt2=[-size;size;1 ];
  pt3=[-size;-size;1 ];
  pt4=[size;-size;1 ];
  pt5=[size/2-size/2;-size;1 ];
  pt6=[size/2-size/2;size;1 ];
  pt7=[-size;size/2-size/2;1 ];
  pt8=[size;size/2-size/2;1 ];

  health=[pt1,pt2,pt3,pt4,pt5,pt6,pt7,pt8];

  

endfunction