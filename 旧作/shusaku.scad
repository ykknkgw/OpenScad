
rTriangle1();
module rTriangle1(){
  linear_extrude(height = 1, center = true)
    hull() {
      polygon([[45,0],[0,20],[-45,0]]);
      translate([0,35,0]) circle(d=15);
    }
}

/*
minkowski(){
        linear_extrude(height = 1, center = true, convexity = 10, scale=0.9) polygon([[-45,0],[0,35],[45,0]]);
        translate([0,0,0]) sphere(r = 1);
    }
    */
/*
module daisha(){cube([900, 450, 10]);

translate([0,450,0])cylinder(h=600,r=10);
translate([0,0,0])cylinder(h=600,r=10);
rotate([-90,90,0])
translate([-600, 0, 00])
cylinder(h=450,r=10);
}

module tires(){
    cube([90, 45, 1]);
rotate([90,90,0])
translate([0,0,-1])
cube([45,90, 1]);
translate([0,45,0])
rotate([90,90,0])
cube([45,90, 1]);
}

module bug(){
cube([90, 45, 1]);
color("red")
translate([45,35,3])
cylinder(h=1, r=10);

color("blue")
rotate([0,0, ])
cube([45*sqrt(2), 45*sqrt(2), 1]);
}




module aaa(){
difference(){
    cube([90, 45, 1]);

color("blue")
translate([0,0,-1])
    rotate([0,0,81.85])
    cube([60, 60, 3]);
translate([90,0,-1])
    rotate([0,0,180-90-47.82])
    cube([60, 60, 3]);


    translate([0,0,-1])
    rotate([0,0,47.82])
    cube([60, 60, 3]);
}
}



union(){
        aaa();
color("red")
translate([45,35,0])
cylinder(h=1.5, r=10);

}
*/