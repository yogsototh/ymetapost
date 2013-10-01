pair int,bool,func,intlist,list;
resize(.8cm);
int=origin;
% drawoptions (withcolor baseOne withpen pencircle scaled 1.2);

intlist=int shifted (gu,0);
func=int shifted (0,-.6gu);
bool=func shifted (gu,0);
list=func shifted (2u,0);



pair decal;
pair fint,fbool,ffunc,fintlist,flist;
decal := (1.7gu,0);
fint=int shifted decal;
fintlist=intlist shifted decal;
ffunc=   func shifted decal;
fbool=   bool shifted decal;
flist=   list shifted decal;

drawoptions(withcolor yellow withpen pencircle scaled 1);
drawLoopPoint(int,int shifted (0,1.6u),"\mathtt{sqrt}");
drawLoopPoint(fint,fint shifted (0,1.9u),"\scriptstyle\mathtt{fmap\ sqrt}");

drawoptions(withcolor green withpen pencircle scaled 1);
drawEdge(int,int,"\mathtt{id}");
drawEdge(fint,fint,"\scriptstyle\mathtt{fmap\ id}");

drawoptions(withcolor red withpen pencircle scaled 1);
drawEdgeAngle(int,bool,"\mathtt{odd}",-30);
drawEdgeAngle(fint,fbool,"\scriptstyle\mathtt{fmap\ odd}",-30);

drawoptions(withcolor magenta withpen pencircle scaled 1);
drawEdgeAngle(int,bool,"\mathtt{even}",30);
drawEdgeAngle(fint,fbool,"\scriptstyle\mathtt{fmap\ even}",30);

drawoptions(withcolor violet withpen pencircle scaled 1);
drawEdge(intlist,intlist,"\mathtt{tail}");
drawEdge(fintlist,fintlist,"\scriptstyle\mathtt{fmap\ tail}");

drawoptions(withcolor blue withpen pencircle scaled 1);
drawEdge(intlist,int,"\mathtt{length}");
drawEdge(fintlist,fint,"\scriptstyle\mathtt{fmap\ length}");

drawoptions(withcolor base1);
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

drawblock(fint,fbool,"\mathtt{F}");

% Draw blocks
pair ff;
ff = .5[fint,fintlist] shifted (0,u);
path b;
b := block(origin,origin);
draw b scaled .5 shifted ff;
label.top(btex $\mathtt{F\ F}$ etex, blockLabelPosition(b)) scaled .5 shifted ff;
draw b scaled .25 shifted ff;
label.top(btex $\mathtt{F\ F\ F}$ etex, blockLabelPosition(b)) scaled .25 shifted ff;

pair psqrt,pid,plength,podd,peven,ptail;
pair pfsqrt,pfid,pflength,pfodd,pfeven,pftail;

psqrt := midpoint(loopPoint(int,int shifted (0,1.6u)));
pid   := midpoint(edge(int,int));
podd  := midpoint(edgeAngle(int,bool,-30));
peven := midpoint(edgeAngle(int,bool,30));
ptail := midpoint(edge(intlist,intlist));
plength := midpoint(edge(intlist,int));
pfsqrt := midpoint(loopPoint(fint,fint shifted (0,1.9u)));
pfid   := midpoint(edge(fint,fint));
pfodd  := midpoint(edgeAngle(fint,fbool,-30));
pfeven := midpoint(edgeAngle(fint,fbool,30));
pftail := midpoint(edge(fintlist,fintlist));
pflength := midpoint(edge(fintlist,fint));

nodespace := 6bp;
drawoptions(withcolor yellow withpen pencircle scaled 1);
drawarrow edgeAngle(psqrt,pfsqrt,20) dashed evenly;

drawoptions(withcolor green withpen pencircle scaled 1);
drawarrow edgeAngle(pid,pfid,20) dashed evenly;

drawoptions(withcolor blue withpen pencircle scaled 1);
drawarrow edgeAngle(plength,pflength,-20) dashed evenly;

drawoptions(withcolor red withpen pencircle scaled 1);
drawarrow edgeAngle(podd,pfodd,0) dashed evenly;

drawoptions(withcolor magenta withpen pencircle scaled 1);
drawarrow edgeAngle(peven,pfeven,-20) dashed evenly;

drawoptions(withcolor violet withpen pencircle scaled 1);
drawarrow edgeAngle(ptail,pftail,-5) dashed evenly;
