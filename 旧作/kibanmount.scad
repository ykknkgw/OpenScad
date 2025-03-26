$fs=0.01;

module baseplate(){
difference(){
color("green")cube([40,1,20]);
    translate([15,2,10])
    rotate([90,0, 0])
        cylinder(h=5, r=3);
}
}


difference(){
    baseplate();
    translate([25,2,10])
    rotate([90,0, 0])
        cylinder(h=5, r=0.75);
    translate([5,2,5])
    rotate([90,0, 0])
        cylinder(h=5, r=0.75);
    translate([35,2,5])
    rotate([90,0, 0])
        cylinder(h=5, r=0.75);
}
