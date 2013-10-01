z0=(0,0);
z1=(1.5gu,0);
z2=(0,-gu);
z3=(1.5gu,-gu);
path ac,ab;

label(btex $\mathtt{[a]}$ etex,z0);
label(btex $\mathtt{[b]}$ etex,z1);
label(btex $\mathtt{List\ a}$ etex,z2 shifted (-u,0));
label(btex $\mathtt{List\ b}$ etex,z3 shifted (u,0));

drawEdge(z0,z1,"\mathtt{fmap_{[]}\ f}");
drawEdge(z2,z3,"\mathtt{fmap_{List}\ f}");
ab:=edge(z0,z2);
drawarrow ab;
label.lft(btex $\mathtt{toList}$ etex,midpoint(ab));

ac:=edge(z1,z3);
drawarrow ac;
label.rt(btex $\mathtt{toList}$ etex,midpoint(ac));

