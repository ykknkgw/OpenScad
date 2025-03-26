buse <active.scad>
use <wheelbase.scad>
use <./../daisha/daisha.scad>

translate([0,0,0]) daisha(600,800, 700, 75);
translate([300,400,100]) {
  translate([0,-150/2,0]) base(300);
  translate([0,0,0]) active_caster(75);
}