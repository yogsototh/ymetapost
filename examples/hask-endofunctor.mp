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

pair decal;
pair fint,fbool,ffunc,fintlist,flist;
decal := (1.7gu,0);
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

drawState(int,"\mathtt{Int}");
drawState(fint,"\mathtt{F\ Int}");
drawState(intlist,"\mathtt{[Int]}");
drawState(fintlist,"\mathtt{F\ [Int]}");
drawState(func,"\mathtt{a\rightarrow b}");
drawState(ffunc,"\mathtt{F\ a\rightarrow b}");
drawState(list,"\mathtt{[a]}");
drawState(flist,"\mathtt{F\ [a]}");
drawState(bool,"\mathtt{Bool}");
drawState(fbool,"\mathtt{F\ Bool}");
