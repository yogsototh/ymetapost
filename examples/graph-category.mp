pair a,b,c;
a=origin;
b=a shifted (gu,0);
c=a shifted (gu,0) rotated -60;

drawState(a,"X");
drawState(b,"Y");
drawState(c,"Z");
drawEdgeAngle(a,b,"\alpha",30);
drawEdgeAngle(b,c,"\beta",30);
drawEdgeAngle(c,a,"\gamma",30);
