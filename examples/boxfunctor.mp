pair a,b;
a:=origin;
b:=a shifted (1.7gu,0);

drawState(a,"a");
drawState(b,"b");
drawEdge(a,b,"f");

pair fa,fb;
fa=a shifted (0,-.6gu);
fb=b shifted (0,-.6gu);

drawbox(fa,"F");
drawState(fa,"a");
drawbox(fb,"F");
drawState(fb,"b");

pair mf,mff;
path ab,fafb;
ab  :=edge(a,b);
fafb:=edge(fa,fb);
mf := midpoint(ab);
mff := midpoint(fafb);
path p, arr;
p := mf -- mff;
arr := subpath (0.05,0.65) of p;
drawoptions(withcolor yellow);
label.rt(btex $\mathtt{fmap}$ etex,midpoint(arr));
drawoptions(withcolor yellow withpen pencircle scaled 1 dashed evenly);
drawarrow arr;
p:=edge(a,fa);
arr := subpath (0,0.7) of p;
drawarrow arr;
label.rt(btex $F$ etex,midpoint(arr));
p:=edge(b,fb);
arr := subpath (0,0.7) of p;
drawarrow arr;
label.rt(btex $F$ etex,midpoint(arr));
drawoptions(withcolor base1 dashed evenly);
drawEdgeAngle(fa,fb,"f",-35);
nodespace:=2u+1mm;
drawoptions(withcolor base1);
drawEdge(fa,fb,"\mathtt{fmap}\ f");
