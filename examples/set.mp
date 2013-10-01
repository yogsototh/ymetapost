pair A,B,C,D;
A=(0,0);
B=A shifted (.7gu,1/2gu);
C=A shifted (.7gu,-1/2gu);
D=C shifted (.7gu,0);

drawState(A, "A");
drawState(B, "B");
drawState(C, "C");
drawState(D, "D");

drawEdge(A,A,"id_A");
drawEdge(B,B,"id_B");
drawEdge(C,C,"id_C");
drawEdge(D,D,"id_D");
