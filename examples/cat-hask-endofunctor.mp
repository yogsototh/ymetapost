% DPI 180
pair int,bool,func,intlist,list;
resize(.8cm);
int=origin;
% drawoptions (withcolor baseOne withpen pencircle scaled 1.2);

intlist=int shifted (gu,0);
func=int shifted (0,-.6gu);
bool=func shifted (gu,0);
list=func shifted (2u,0);


drawLoopPoint(int,int shifted (0,1.6u),"\mathtt{sqrt}");
drawEdge(int,int,"\mathtt{id}");
drawEdgeAngle(int,bool,"\mathtt{odd}",-30);
drawEdgeAngle(int,bool,"\mathtt{even}",30);
drawEdge(intlist,intlist,"\mathtt{tail}");
drawEdge(intlist,int,"\mathtt{length}");

% ---------- F ----------------

pair decal;
pair fint,fbool,ffunc,fintlist,flist;
decal := (-1.2gu,-1.5gu);
fint=int shifted decal;
fintlist=intlist shifted decal;
ffunc=   func shifted decal;
fbool=   bool shifted decal;
flist=   list shifted decal;

drawLoopPoint(fint,fint shifted (0,1.9u),"\scriptstyle\mathtt{fmap\ sqrt}");
drawEdge(fint,fint,"\scriptstyle\mathtt{fmap\ id}");
drawEdgeAngle(fint,fbool,"\scriptstyle\mathtt{fmap\ odd}",-30);
drawEdgeAngle(fint,fbool,"\scriptstyle\mathtt{fmap\ even}",30);
drawEdge(fintlist,fintlist,"\scriptstyle\mathtt{fmap\ tail}");
drawEdge(fintlist,fint,"\scriptstyle\mathtt{fmap\ length}");

drawblock(fint,fbool,"\mathtt{F}");

pair ff;
ff = .5[fint,fintlist] shifted (0,u);
path b;
b := block(origin,origin);
draw b scaled .5 shifted ff;
label.top(btex $\mathtt{F\ F}$ etex, blockLabelPosition(b)) scaled .5 shifted ff;
draw b scaled .25 shifted ff;
label.top(btex $\mathtt{F\ F\ F}$ etex, blockLabelPosition(b)) scaled .25 shifted ff;

% ------------ G --------------
pair gdecal;
pair gint,gbool,gfunc,gintlist,glist;
gdecal := (1.2gu,-1.5gu);
gint=int shifted gdecal;
gintlist=intlist shifted gdecal;
gfunc=   func shifted gdecal;
gbool=   bool shifted gdecal;
glist=   list shifted gdecal;

drawLoopPoint(gint,gint shifted (0,1.9u),"\scriptstyle\mathtt{fmap\ sqrt}");
drawEdge(gint,gint,"\scriptstyle\mathtt{fmap\ id}");
drawEdgeAngle(gint,gbool,"\scriptstyle\mathtt{fmap\ odd}",-30);
drawEdgeAngle(gint,gbool,"\scriptstyle\mathtt{fmap\ even}",30);
drawEdge(gintlist,gintlist,"\scriptstyle\mathtt{fmap\ tail}");
drawEdge(gintlist,gint,"\scriptstyle\mathtt{fmap\ length}");

drawblock(gint,gbool,"\mathtt{G}");

pair gf;
gf = .5[gint,gintlist] shifted (0,u);
path b;
b := block(origin,origin);
draw b scaled .5 shifted gf;
label.top(btex $\mathtt{G\ G}$ etex, blockLabelPosition(b)) scaled .5 shifted gf;
draw b scaled .25 shifted gf;
label.top(btex $\mathtt{G\ G\ G}$ etex, blockLabelPosition(b)) scaled .25 shifted gf;


drawState(int,"\mathtt{Int}");
drawState(intlist,"\mathtt{[Int]}");
drawState(func,"\mathtt{a\rightarrow b}");
drawState(list,"\mathtt{[a]}");
drawState(bool,"\mathtt{Bool}");

drawState(fint,"\mathtt{F\ Int}");
drawState(fintlist,"\mathtt{F\ [Int]}");
drawState(ffunc,"\mathtt{F\ a\rightarrow b}");
drawState(flist,"\mathtt{F\ [a]}");
drawState(fbool,"\mathtt{F\ Bool}");

drawState(gint,"\mathtt{G\ Int}");
drawState(gintlist,"\mathtt{G\ [Int]}");
drawState(gfunc,"\mathtt{G\ a\rightarrow b}");
drawState(glist,"\mathtt{G\ [a]}");
drawState(gbool,"\mathtt{G\ Bool}");

drawoptions(withcolor yellow);
label.top(btex $I$ etex, .5[int,intlist] shifted (0,u));

drawoptions(withpen pencircle scaled 2bp withcolor yellow);
ahlength:=.3u;

drawEdgeAngle(.5[int,func] shifted (-.5u,0), ff shifted (0,2.2u), "?", -30);
drawEdgeAngle(ff shifted (-u,2.2u), .5[int,func] shifted (-.5u,u), "?", 30);
drawEdgeAngle(.5[intlist,bool] shifted (.5u,0), gf shifted (0,2.2u), "?", 30);
drawEdgeAngle(gf shifted (u,2.2u), .5[intlist,bool] shifted (.5u,u), "?", -30);

drawEdgeAngle(.5[fintlist,fbool] shifted (1.1u,u), .5[gint,gfunc] shifted (-1.1u,u), "?", 30);
drawEdgeAngle(.5[gint,gfunc] shifted (-1.1u,u), .5[fintlist,fbool] shifted (1.1u,u), "?", 30);
