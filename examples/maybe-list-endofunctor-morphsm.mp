pair tree,list;
resize(.8cm);
list=origin;

tree=list shifted (gu,0);
drawState(list,"\mathtt{[]}");
drawState(tree,"\mathtt{Maybe}");
drawEdgeAngle(list,tree,"\mathtt{toMaybe}",30);
drawEdgeAngle(tree,list,"\mathtt{mToList}",30);
