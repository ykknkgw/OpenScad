use <1717.scad>
use <shimring.scad>
use <motor_unit.scad>

width = 72;
height=80;
thick=1;

d1717=15; //15mm

translate([-3,30, (d1717/2)+thick])
rotate([0,-90, 0]) motor1717();
translate([3,30, (d1717/2)+thick])
rotate([0, 0, 180]) rotate([0,-90, 0]) motor1717();

difference(){
  hull() {
    translate([-30,35,0]) cube([60,30,1.6]);
    translate([0,30,0]) cylinder(h=1.6, d=60);
    /*
        polygon([[30,0],[0,height],[-30,0]]);
        translate([0,height-30,0.5]) circle(d=60);
        */
      }
  translate([25, 30, -1]) cube([6,25,3]);
  translate([-25-6, 30, -1]) cube([6,25,3]);
}