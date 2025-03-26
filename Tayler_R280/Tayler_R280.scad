//
//
//Tayler Frozen food dispenser R280
//https://www.taylor-company.com/equipment/equipment-detail/model-r280/
//https://www.taylor-company.com/wp-content/uploads/2023/04/Taylor_R280_FrozenFoodDispenser_Manual_1.pdf    
//
//
use <Tayler_R280_basket.scad>
use <tayler_R280_body.scad>
use <tayler_R280_driptrayA.scad>

tayler_R280();

module tayler_R280(){
    translate([0,0,1750])rotate([90,0,0]) text("Tayler R280", size=50);
    R280_body();
//DriptrayA
    translate([10, 30, 160])R280_driptrayA(700);
//DriptrayB

    translate([170, 450, 410])   rotate([0,0,180]) R280_basket();
    translate([170+30+150, 450, 410])   rotate([0,0,180]) R280_basket();
    translate([10, 30, 400])R280_driptrayB();
    translate([380+170, 450, 410])   rotate([0,0,180]) R280_basket();
    translate([380+170+30+150, 450, 410])   rotate([0,0,180]) R280_basket();
    translate([350+10+20, 30, 400])R280_driptrayB();
//車輪
    color("black"){
    $fs=0.1;
    translate([50, 50, 30])rotate([90,0,90])cylinder(h=20, r=30);
    translate([710-50-10, 50, 30])rotate([90,0,90])cylinder(h=20, r=30);
    translate([50, 810-50, 30])rotate([90,0,90])cylinder(h=20, r=30);
    translate([710-50-10, 810-50,30])rotate([90,0,90])cylinder(h=20, r=30);
    }
}
