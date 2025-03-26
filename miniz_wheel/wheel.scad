//Miniz 
$fs=0.01;

module wheel_axis(){
  difference(){
    cylinder(h=8.5, r=10);
    translate([0,0,-1])
    cylinder(h=10, r=9);
  }
  translate([0,0,3])
  difference(){
    cylinder(h=8, r=4);
    cylinder(h=9, r=2);
    translate([0,0,-1])cylinder(h=1+2+2.5,r=3);
    translate([0,0,-1])cylinder(h=1+2,r=3.7);
    translate([0,0,2+2.5+1])cylinder(h=3.5,r=3);
  }
}

module wheel(){
  wheel_axis();
  difference(){
  hull(){
    cylinder(h=1,r=10);
    translate([0,0,2]) cylinder(h=1,r=4);
  }
  hull(){
    translate([0,0,-0.1]) cylinder(h=0.2,r=19/2);
    translate([0,0,2.1]) cylinder(h=1,r=7/2);
  }
  }
  difference(){
    translate([0,0,7.5]) cylinder(h=1, r=21/2);
    translate([0,0,7]) cylinder(h=2, r=18/2);
  }
}

color("white") wheel();