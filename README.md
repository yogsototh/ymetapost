# Generate graph in PNG using metapost

First you need to install `metapost` and `imagemagick`.

Then this code provide a nice code to draw graphs and automata.
Furthermore the script `gen` generate only PNG optimized for the web.

## Example

~~~
z0=(1.3u,0);
z1=z0 shifted (u,0);
z2=z1 shifted (u,0);

nodesize:=4bp;
nodespace:=6bp;

drawstate(z0);
drawstate(z1);
drawstate(z2);

drawarrow edge(z0,z1);
drawarrow edge(z1,z2);
drawarrow edgeAngle(z0,z2,-35);

nodesize:=6bp;
ahlength:=.3nodesize;
drawarrow edge(z0,z0);
drawarrow edge(z1,z1);
drawarrow edge(z2,z2);

label(btex $ = 3 = $ etex,origin);
drawstate((-1.5u,.2u));
drawstate((-1.5u-.2u,-.2u));
drawstate((-1.5u+.2u,-.2u));
~~~

Generate the following image:

<img src="./abstraction.png" alt="The category for the number 3"><br/>
The category corresponding to number 3.


