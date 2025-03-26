module bearing63(){
  $fs=0.01;
  color("dimgray")
  difference(){
    cylinder(h=2.5, r=3);
    translate([0,0,-0.1]) cylinder(h=3,r=1.5);
  }
}

bearing63();