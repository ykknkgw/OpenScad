color("pink") shimring(6, 3, 0.1);

module shimring(gaikei, naikei,t){
  difference(){
    cylinder(h=t, d=gaikei);
    cylinder(h=t, d=naikei);
  }
}