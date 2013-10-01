pair A,B,C,D;
A=(0,0);
B=A shifted (-1.5gu,0);
C=A shifted (1.5gu,0);
D=C shifted (1.5gu,0);

drawState(A, "A");
drawState(B, "B");
drawState(C, "C");
drawState(D, "D");

drawEdge(B,A,"A \leq B");
drawEdge(C,A,"A \leq C");
drawEdge(D,C,"C \leq D");
drawEdgeAngle(D,A,"A \leq D", 35);

drawEdge(A,A,"A \leq A");
drawEdge(B,B,"B \leq B");
drawEdge(C,C,"C \leq C");
drawEdge(D,D,"D \leq D");
