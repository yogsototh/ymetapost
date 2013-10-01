z0=(0,0);
z1=2(u,0);
z2=2(2u,0);

nodesize:=4bp;
nodespace:=6bp;

drawarrow edge(z0,z1);
drawarrow edge(z1,z2);
drawarrow edgeAngle(z0,z2,35);

drawstate(z0);
drawstate(z1);
drawstate(z2);

nodesize:=6bp;
ahlength:=.3nodesize;
drawarrow edge(z0,z0);
drawarrow edge(z1,z1);
drawarrow edge(z2,z2);

