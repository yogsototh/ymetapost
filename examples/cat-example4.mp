z0=(0,0); z1=(gu,0); z2=(.5gu,-.75gu);
drawState(z0,"A");
drawState(z1,"B");
drawState(z2,"C");

drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,35);
drawarrow edgeAngle(z1,z2,35);
drawarrow edgeAngle(z2,z0,35);
drawarrow edge(z0,z0);
drawarrow edge(z1,z1);
drawarrow edge(z2,z2);
