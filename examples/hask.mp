pair int,bool,func,intlist,list;
resize(.8cm);
int=origin;
% drawoptions (withcolor baseOne withpen pencircle scaled 1.2);

intlist=int shifted (gu,0);
func=int shifted (0,-.6gu);
bool=func shifted (gu,0);
list=func shifted (2u,0);

drawState(int,"\mathtt{Int}");
drawState(bool,"\mathtt{Bool}");
drawState(func,"\mathtt{a\rightarrow b}");
drawState(intlist,"\mathtt{[Int]}");
drawState(list,"\mathtt{[a]}");

drawLoopPoint(int,int shifted (0,1.6u),"\mathtt{sqrt}");
drawEdge(int,int,"\mathtt{id}");
drawEdgeAngle(int,bool,"\mathtt{odd}",-30);
drawEdgeAngle(int,bool,"\mathtt{even}",30);
drawEdge(intlist,intlist,"\mathtt{tail}");
drawEdge(intlist,int,"\mathtt{length}");
