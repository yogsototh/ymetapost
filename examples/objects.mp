
z0=(0,0);
z1=z0 shifted (gu,0);
z2=z1 shifted (gu,0);
z3=z2 shifted (gu,-0.5gu);
z4=z3 shifted (gu,0);
z5=z4 shifted (1.5u,0);
z6=z5 shifted (2u,0);

drawblock(z0,z6,"\mathcal{C}");
draw z5 -- z6 dashed withdots withpen pencircle scaled 2bp;

drawoptions(withcolor yellow);
drawState(z0, "A");
drawState(z1, "B");
drawState(z2, "C");

drawState(z3, "D");
drawState(z4, "E");
