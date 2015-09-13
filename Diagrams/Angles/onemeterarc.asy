defaultpen(fontsize(12));
pen tiny_p = fontsize(7);
pen thick_p = linewidth(1);

int maxdegrees = 10;
real tick_size = 2 mm;
real small_tick_size = 1 mm;
real r = 100 cm;
real onedegree = 2*pi*r/360;
real oneminute = onedegree/60;

draw((0,0)--(0,-maxdegrees*onedegree));

string angle_label;
path tick_path = (-tick_size,0)--(tick_size,0);
path small_tick_path = (-tick_size,0)--(small_tick_size,0);

for(int angle = 0; angle <= maxdegrees; ++angle) {
  angle_label = "$"+format("%d",angle)+"^{\circ}$";
  draw(shift((0,-angle*onedegree))*tick_path, thick_p);
  label(angle_label,(tick_size,-angle*onedegree),E); 
}
path based_tick;
for(int ndegrees = 0; ndegrees < maxdegrees; ++ndegrees) {
  based_tick = shift((0,-ndegrees*onedegree))*small_tick_path;
  for(int minutes = 10; minutes <= 50; minutes = minutes + 10) {
	draw(shift((0,-minutes*oneminute))*based_tick);
	label(format("%d",minutes)+"'", (small_tick_size,-ndegrees*onedegree-minutes*oneminute), E, tiny_p);
  }
}



