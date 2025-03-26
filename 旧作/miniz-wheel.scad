use <wheel.scad>
use <spurgear.scad>
use <bearing63.scad>
use <m3screw.scad>

module miniz_wheel(){
  color("silver") wheel();
  translate([0,0,8.5]) spurgear_for_1717();
  color("black")
    difference(){
      translate([0,0,0.1])
      cylinder(h=8, r=25.7/2);
      translate([0,0,-0.5])
      cylinder(h=9, r=25.7/2-3);
    }
  //translate([0,0,8.5]) bearing63();
  //translate([0,0,7-2.5]) bearing63();
  rotate([0,180,0]) translate([0,0,-4.5])screw(3,10,5.5,2);
}

difference(){
miniz_wheel();
translate([0,0,-1]) cube([20,20,20]);
}
