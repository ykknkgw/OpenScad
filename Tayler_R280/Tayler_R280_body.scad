//
//
//Tayler Frozen food dispenser R280
//https://www.taylor-company.com/wp-content/uploads/2023/04/Taylor_R280_FrozenFoodDispenser_Manual_1.pdf
//
//
R280_body();
module R280_body(){
//    cube([730, 810, 1900]);
    translate([0,0,1900-60])
    color("black")
    hull(){
        translate([0,0,50]) cube([730, 30, 10]);
        translate([0,20,0])    cube([730, 10, 30]);
    }
    color("silver")    translate([0,30,1900-60])cube([730, 810-30, 60]);
    color("silver")translate([0,30,1900-60-1000+30])cube([730, 30, 1000-30]);
    color("silver")translate([0,30+30,1900-60-1000])cube([730, 810-60, 1000]);
    color("silver")
    union(){
    translate([0,810-280,60+100])cube([730, 280, 680]);
    translate([0,810-400,60])cube([730, 400, 300]);
    }
    color("gray")translate([0,0,60])cube([730, 810, 100]);
    $fs=0.1;
translate([50, 50, 0])rotate([90,0,0])cylinder(h=2, r=3);

}
/*
$fs=0.1;
translate([50, 50, 0])rotate([90,0,0])cylinder(h=2, r=3);
translate([(810-70), 50, 0])rotate([90,0,0])cylinder(h=2, r=3);

*/