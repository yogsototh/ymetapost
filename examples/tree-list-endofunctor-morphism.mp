pair tree,list;
resize(.8cm);
list=origin;
tree=list shifted (gu,0);
drawState(list,"\mathtt{[]}");
drawState(tree,"\mathtt{List}");
drawEdgeAngle(list,tree,"\mathtt{toList}",30);
drawoptions(withcolor yellow);
drawEdgeAngle(tree,list,"\mathtt{toHList}",30);
