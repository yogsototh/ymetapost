
z0=(0,0);
z1=z0 shifted (gu,0);
z2=z1 shifted (gu,0);
z3=z2 shifted (gu,-0.5gu);
z4=z3 shifted (gu,0);
z5=z4 shifted (1.5u,0);
z6=z5 shifted (2u,0);

drawblock(z0,z6,"\mathcal{C}");

drawState(z0, "A");
drawState(z1, "B");
drawState(z2, "C");

drawState(z3, "D");

drawoptions(withcolor base01);
drawarrow loopPoint(z3,z3 shifted (0,3.8u)) dashed evenly;
drawarrow loopPoint(z3,z3 shifted (0,4u)) dashed evenly;
drawState(z4, "E");
drawEdge(z4,z4, "id_E");
drawarrow edgeAngle(z3,z4,0) dashed evenly;
drawarrow edgeAngle(z3,z4,20) dashed evenly;
drawarrow edgeAngle(z3,z4,-20) dashed evenly;
draw z5 -- z6 dashed withdots withpen pencircle scaled 2bp;

drawoptions(withcolor yellow);
drawarrow loopPoint(z3,z3 shifted (0,3.5u)) dashed evenly;
drawEdge(z3,z3, "id_D");
drawLoopPoint(z3,z3 shifted (0,2.5u),"\ell");

drawEdge(z0,z1, "f");
drawEdgeAngle(z0,z1, "f'", 45);

drawEdge(z0,z0, "id_A");
drawEdge(z1,z1, "id_B");
drawEdge(z2,z2, "id_C");

drawEdgeAngle(z1,z2, "g", 0);
drawEdgeAngle(z1,z2, "g'", 45);

drawEdgeAngle(z0,z2, "h", -30);
drawarrow edgeAngle(z0,z2,-45) dashed evenly;
drawarrow edgeAngle(z0,z2,-55) dashed evenly withcolor base01;
drawarrow edgeAngle(z0,z2,-60) dashed evenly withcolor base01;
