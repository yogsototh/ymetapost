z0=(0,0);
z1=(gu,0);
z2=(0,-gu);
z3=(gu,-gu);
path ac,ab;

label("A",z0);
label("A",z1);
label("B",z2);
label("B",z3);

drawEdge(z0,z1,"id_A");
drawEdge(z1,z2,"f");
ab:=edge(z0,z2);
drawarrow ab;
label.lft(btex $f$ etex,midpoint(ab));

drawEdge(z2,z3,"id_B");

ac:=edge(z1,z3);
drawarrow ac;
label.rt(btex $f$ etex,midpoint(ac));

