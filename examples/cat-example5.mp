z0=origin;
z1=(gu,0);

drawState(z0,"A");
drawState(z1,"B");
drawEdgeAngle(z0,z1,"f",35);
drawEdge(z1,z0,"g");
drawEdgeAngle(z0,z1,"h",-35);
drawEdge(z0,z0,"id_A");
drawEdge(z1,z1,"id_B");
