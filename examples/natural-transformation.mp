z0=(0,0);
z1=(gu,0);
z2=(0,-gu);
z3=(gu,-gu);
path ac,ab;

label(btex $F X$ etex,z0);
label(btex $F Y$ etex,z1);
label(btex $G X$ etex,z2);
label(btex $G Y$ etex,z3);

drawEdge(z0,z1,"F f");
drawEdge(z2,z3,"G f");
ab:=edge(z0,z2);
drawarrow ab;
label.lft(btex $\eta_X$ etex,midpoint(ab));

ac:=edge(z1,z3);
drawarrow ac;
label.rt(btex $\eta_Y$ etex,midpoint(ac));

