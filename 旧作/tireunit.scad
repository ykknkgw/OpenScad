use <bracket.scad>;
use <daisha.scad>;
translate([0, 20, 0])
tireunit();
translate([900-90-50, 20, 0])
tireunit();

translate([0, 450-20-45, 0])
tireunit();

translate([900-50-90, 450-20-45, 0])
tireunit();

color("blue")daisha();
