
z0=(0,0);
z1=z0 shifted (2gu,0);

drawState(z0, "A");
drawState(z1, "B");

drawoptions(withcolor yellow);
drawEdge(z0,z1, "id_B\circ f = f = f \circ id_A");
drawEdge(z0,z0, "id_A");
drawEdge(z1,z1, "id_B");
