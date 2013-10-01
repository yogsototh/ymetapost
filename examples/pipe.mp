
vardef inmouthsize(expr pos,size) =
    fullcircle xscaled 0.6 scaled size shifted pos
enddef;
vardef outmouthsize(expr pos,size) =
    (subpath (0,4) of fullcircle rotated -90) xscaled 0.6 scaled size shifted pos
enddef;
vardef hiddenoutmouthsize(expr pos,size) =
    (subpath (4,8) of fullcircle rotated -90) xscaled 0.6 scaled size shifted pos
enddef;
vardef inmouth(expr pos) =
    inmouthsize(pos,2u)
enddef;
vardef outmouth(expr pos) =
    outmouthsize(pos,2u)
enddef;
vardef hiddenoutmouth(expr pos) =
    hiddenoutmouthsize(pos,2u)
enddef;
def drawoutmouth(expr pos) =
    draw outmouth(pos);
enddef;

def drawtube(expr pos) =
    begingroup;
    save midin,midout;
    pair midin,midout;
    midin := pos;
    midout := pos shifted (gu,0);
    drawoutmouth(midin);
    drawoutmouth(midout);

    save topin,topout,botin,botout;
    pair topin,topout,botin,botout;
    topin=pos shifted (0,u);
    topout=topin shifted (gu,0);
    botin=pos shifted (0,-u);
    botout=botin shifted (gu,0);
    draw topin -- topout;
    draw botin -- botout;
    endgroup;
enddef;
def drawtubelabel(expr pos,l) =
    drawtube(pos);
    label(l,pos shifted (.5gu,0));
enddef;
def drawtwotubes(expr posintop,posinbot,posout) =
    begingroup;
    draw outmouth(posintop);
    draw outmouth(posinbot);
    draw outmouth(posout);

    save intopt,intopb,inbott,inbotb,outt,outb;
    pair intopt,intopb,inbott,inbotb,outt,outb;
    intopt=posintop shifted (0,u);
    intopb=posintop shifted (0,-u);
    inbott=posinbot shifted (0,u);
    inbotb=posinbot shifted (0,-u);
    outt=posout shifted (0,u);
    outb=posout shifted (0,-u);

    draw intopt{right} .. {right}outt;
    draw intopb{right} .. {left}inbott;
    draw inbotb{right} .. {right}outb;

    endgroup;
enddef;
def drawtwotubeslabel(expr ptop,pbot,pout,l) =
    begingroup;
    drawtwotubes(ptop,pbot,pout);
    save mid;
    pair mid;
    mid = 6/30ptop+6/30pbot+18/30pout;
    label(l,mid);
    endgroup;
enddef;
def drawlongbegintube (expr pos,len) =
    draw (subpath (4,8) of fullcircle rotated -90) scaled 2u shifted pos shifted (-len,0);
    draw (pos shifted (-len,u)){right}..{right}(pos shifted (0,u));
    draw (pos shifted (-len,-u)){right}..{right}(pos shifted (0,-u));
    draw outmouth(pos);
enddef;
def drawbegintube (expr pos) =
    drawlongbegintube(pos,2u);
enddef;

def drawbegintubelabel(expr pos,l) =
    drawbegintube(pos);
    label(l,pos shifted (-1.5u,0));
enddef;

def drawtube(expr pos) =
    begingroup;
    save midin,midout;
    pair midin,midout;
    midin := pos;
    midout := pos shifted (gu,0);
    draw outmouth(midin);
    draw outmouth(midout);

    save topin,topout,botin,botout;
    pair topin,topout,botin,botout;
    topin=pos shifted (0,u);
    topout=topin shifted (gu,0);
    botin=pos shifted (0,-u);
    botout=botin shifted (gu,0);
    draw topin -- topout;
    draw botin -- botout;
    endgroup;
enddef;
def drawtubelabel(expr pos,l) =
    drawtube(pos);
    label(l,pos shifted (.5gu,0));
enddef;

pair pos;
pos:=origin;
z0=(2.5gu,.5gu);
z1=(0,-1.5gu);
z2=z1 shifted (3gu,0);

drawbegintubelabel(pos shifted (-.5gu,.5gu),btex $42$ etex);
drawbegintubelabel(pos shifted (-.5gu,-.5gu),btex $\mathtt{"foo"}$ etex);
drawtwotubeslabel(pos shifted (0,.5gu), pos shifted (0,-.5gu), pos shifted (gu,0),btex $+$ etex);
draw inmouth(pos shifted (0,.5gu)  );
draw inmouth(pos shifted (0,-.5gu) );

drawbegintubelabel(z0 shifted (-2u,-gu),btex $\mathtt{"foo"}$ etex);
drawoptions(withcolor green);
drawbegintubelabel(z0,btex $42$ etex);
drawtwotubeslabel(z0, z0 shifted (0,-gu), z0 shifted (gu,-0.5gu),btex $+$ etex);
draw inmouth(z0 shifted (0,-gu));


drawoptions(withcolor green);
drawbegintubelabel(z1,btex $\mathtt{"foo"}$ etex);
drawtubelabel(z1,btex $\mathtt{(+\ 42)}$ etex)

drawoptions(withcolor red);
drawlongbegintube(z2,5u);
label(btex $\mathtt{(+\ 42\ "foo")}$ etex,z2 shifted (-3u,0));
draw z2 shifted (-4u,2u) -- z2 shifted (0,-2u) dashed evenly withpen pencircle scaled 1bp;
draw z2 shifted (-4u,-2u) -- z2 shifted (0,2u) dashed evenly withpen pencircle scaled 1bp;

drawoptions(withcolor base01);
drawarrow pos shifted (gu+2u,0) -- pos shifted (gu+4u,0);
drawarrow z0 shifted (-gu,-gu-u) .. z1 shifted (gu,2u);
drawarrow pos shifted (gu+u,-1.5gu) -- pos shifted (gu+3u,-1.5gu);

