import geometry;
size(10cm);
defaultpen(fontsize(16));

real factor = 1.5cm;
real d = 1*factor;
real D = 3*factor;
real r = 2*factor;
real R = 6*factor;
real offset = 3mm;
pen real_p = linewidth(2);
pen sight_p = linewidth(1.2)+gray(0.5)+Dotted;

point O=(0,0);
point P=(r,0);
point PA=(r, d/2);
point PB=(r, -d/2);
point Q=(R,0);
point QA=(R, D/2);
point QB=(R,-D/2);

segment s = segment(O,Q);
draw(s,sight_p);
segment sa = segment(O,QA);
draw(sa,sight_p);
segment sb = segment(O,QB);
draw(sb,sight_p);
segment marker = segment(PA,PB);
draw(marker, real_p);
segment object = segment(QA,QB);
draw(object, real_p);

markangle("$\theta$", (line) sb, (line) sa);

// labels
dot("eye",O,W);
label(minipage("\centering marker blocking view of object",(R-r)*3/4),PA,N);
label("$d$",P,E);
label("object",QA,N);
label("$D$",Q,E);
distance("$r$", (0,-d/2-offset), (r,-d/2-offset), 0);
distance("$R$", (0,-D/2-offset), (R,-D/2-offset), 0);
