import graph;

defaultpen(fontsize(10));
pen thick_p = linewidth(1);
pen circle_p = thick_p+black;
pen radial_p = black;
pen radial_accent_p = linewidth(1)+radial_p;
pen degree_p = black;

real r = 4 cm;

real tick_factor = 1.03;

pen thin=linewidth(0.5*linewidth());

string angle_label;
for(int angle = 0; angle < 360; ++angle) {
  if (angle % 5 > 0) { // multiple of 1 but not a multiple of 5 
	draw(r/tick_factor*dir(angle)--r*dir(angle),radial_p); // outer ticks
  }
  if (angle % 5 == 0) { // multiple of 5
	angle_label = "$"+format("%d",angle)+"^{\circ}$";
	label(rotate(angle)*Label(angle_label),tick_factor*r*dir(angle),dir(angle),degree_p); 
	draw(r/tick_factor/tick_factor*dir(angle)--r*tick_factor*dir(angle),radial_p); // outer ticks
  }
}
label(Label("$0^{\circ}=360^{\circ}$"),tick_factor*r*dir(360),dir(360),degree_p); 
draw(Circle((0,0),r),circle_p);
dot((0,0));


