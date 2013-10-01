z0=(0,0);
z1=(gu,0);
z2=(.5gu,-.75gu);

z3=z0 shifted (2gu,0);
z4=z1 shifted (2gu,0);
z5=z2 shifted (2gu,0);

drawblock(z0,(xpart z1,ypart z2),"\mathcal{C}");
drawblock(z3,(xpart z4,ypart z5),"\mathcal{C}");

drawoptions(withcolor yellow );
drawState(z0,"A");
drawState(z1,"B");
drawState(z4,"B");

drawoptions(withcolor red );
drawState(z2,"C");
drawState(z5,"C");


drawoptions(withcolor green );
drawEdge(z2,z2,"id_C");


drawoptions(withcolor magenta );
drawarrow edgeFull(z1,z2,-90,180);
drawarrow edgeFull(z0,z2,-90,0);
drawarrow edgeFull(z4,z5,-90,180);

drawoptions(withcolor blue );
drawEdge(z0,z0,"id_A");
drawEdge(z1,z1,"id_B");
drawEdge(z4,z4,"id_B");
drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,35);

drawoptions(withcolor green );
drawEdge(z5,z5,"id_C");

drawoptions(withcolor base01);
drawState(z3,"A");
drawEdge(z3,z3,"id_A");
drawarrow edgeAngle(z3,z4,35);
drawarrow edgeAngle(z4,z3,35);
drawarrow edgeFull(z3,z5,-90,0);
