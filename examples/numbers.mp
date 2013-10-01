z0=(0,0);
drawblock(z0,z0,"0");

z1=(gu,0);

drawblock(z1,z1,"1");
drawState(z1, "0");
drawEdge(z1,z1, "id_0");

z2=z1 shifted (gu,0);
z3=z2 shifted (gu,0);

drawblock(z2,z3,"2");

drawState(z2, "0");
drawState(z3, "1");
drawEdge(z2,z2, "id_0");
drawEdge(z3,z3, "id_1");
drawarrow edge(z2,z3);
