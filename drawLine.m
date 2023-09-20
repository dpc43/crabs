function handle = drawLine (p, q, myColor)
%{
p;
q;
myColor;
%}

x=[p(1);q(1)];
y=[p(2);q(2)];

handle=plot(x,y,myColor)
set(handle,"LineWidth",2);

endfunction
