//
//micromouse Classic wheel
//
$fn=100;
module wheel_part1(){
  cylinder(h=2, r=4);
  translate([0,0,2]) color("white")cylinder(h=5, r=11);
}

module classic_wheel(){
  color("red")
  difference(){
    wheel_part1();
    translate([0,0,5]) cylinder(h=4, r=9);
    translate([0,0,-1]) cylinder(h=9, r=1.5);
  }
}
module classic_tire(){
  color("black")
  difference(){
    cylinder(h=5, r=12);
    translate([0,0,-1]) cylinder(h=7, r=11);
  }
}

module tirewheel1717(){
  translate([0,0,2]) classic_tire();
  classic_wheel();
}
