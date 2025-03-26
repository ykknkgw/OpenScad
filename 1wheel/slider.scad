/**
直線番長アイデア出し
真ん中ボールねじ
両脇シャフトで延長
**/
translate([-300,-25,0])cube([1200, 50, 10]);
translate([-300,-25,200])cube([1200, 50, 10]);
translate([-300,-25,300])cube([1200, 50, 10]);
translate([-300,-25,500])cube([1200, 50, 10]);
color("gray"){
translate([0,0,0])cylinder(r=10, h=200);
translate([0,0,300])cylinder(r=10, h=200);
translate([250,0,0])cylinder(r=10, h=200);
translate([250,0,300])cylinder(r=10, h=200);
translate([500,0,0])cylinder(r=10, h=200);
translate([500,0,300])cylinder(r=10, h=200);
}
color("black"){
translate([500,0,200])cylinder(r=9, h=200);
    translate([0,0,200])cylinder(r=9, h=200);
}
//ボールねじ
translate([250,0,200])cylinder(r=9, h=200);
//車輪

color("pink")translate([0,-500,0])rotate([0,0,0])cylinder(r=315, h=10);
color("pink")translate([700,-500,0])rotate([0,0,0])cylinder(r=315, h=10);
color("pink")translate([0,-500,500])rotate([0,0,0])cylinder(r=315, h=10);
color("pink")translate([700,-500,500])rotate([0,0,0])cylinder(r=315, h=10);

