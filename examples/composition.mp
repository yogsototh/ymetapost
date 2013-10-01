
z0=(0,0);
z1=z0 shifted (gu,0);

z2=z0 shifted (2gu,0);
z3=z1 shifted (2gu,0);

z4=(0.5gu,-.5gu);
z5=(1.5gu,0);
z6=(2.5gu,-.5gu);


drawState(z4, "A");
drawState(z5, "B");
drawState(z6, "C");


drawoptions(withcolor red);
drawEdgeAngle(z4,z5, "f",30);

drawoptions(withcolor blue);
drawEdgeAngle(z5,z6, "g",30);


drawoptions(withcolor yellow);
drawEdgeAngle(z4,z6, "g\circ f", 0);

