difference(){
cube([35,70,15], center=true);
    translate([0,0,0.6])
    cube([34,69,14.5],center=true);
    translate([0,0,-1])
    cube([32,67,16],center=true);
}

color("green",1.0)
//translate([0, 0, 50])
translate ([0, 0, 10*sin($t*360)])
    cube([33,68,0.5], center=true);