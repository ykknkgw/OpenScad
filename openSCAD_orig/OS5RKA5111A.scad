module OS5RKA5111A(){
    $fs=0.01;

    color("red")
    hull(){
        translate([0,0,8.7-2.5])sphere(2.5);
        cylinder(h=8.7-2.5,r=2.5);
    }
    color("red")
    difference(){
        cylinder(h=1, r=(5.8/2));
        translate([2.5, -5,-2])cube([10,10,10]);
    }

}
OS5RKA5111A();



