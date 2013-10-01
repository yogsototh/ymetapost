z0=(0,0);
z1=(gu,0);
z2=(0,-gu);
z3=(gu,-gu);

label("A",z0);
label("B",z1);
label("B",z2);
label("C",z3);

drawEdge(z0,z1,"f");

drawEdge(z1,z2,"g");

path ac,ab;
drawEdge(z2,z3,"h");

ac:=edge(z1,z3);
drawarrow ac;
label.rt(btex $h \circ g$ etex,midpoint(ac));

ab:=edge(z0,z2);
drawarrow ab;
label.lft(btex $g \circ f$ etex,midpoint(ab));
