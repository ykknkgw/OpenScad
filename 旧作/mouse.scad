use <sensorholder.scad>
use <battery.scad>
use <motor_unit.scad>
use <1717mount.scad>
include <param.scad>
use <boards.scad>
/*
Rm=34; //半径
Lw=90;//全長
COW=37;//Center of Wheel 車軸中心
WB=22; //wheel base length
TW=11; //Tire Width
*/

//base
module mouse_base(){
  difference(){
  color("green"){
    translate([0,Lw-Rm,0]) cylinder(h=1.6,r=Rm);
    hull(){
    translate([-Rm,5,0]) cube([Rm*2, Lw-Rm-5, 1.6]);
    translate([-Rm+5,5,0])cylinder(h=1.6, r=5);
    translate([Rm-5,5,0])cylinder(h=1.6, r=5);
    }
  }
  for(pos=[0:12:16]){
    $fs=0.01;
    translate([16.5, 37+11+8.5-2-pos, -1])cylinder(h=3,r=0.8);
    translate([16.5-10, 37+11+8.5-2-pos, -1])cylinder(h=3,r=0.8);
    translate([-16.5, (37+11+8.5-2)-pos, -1])cylinder(h=3,r=0.8);
    translate([-16.5+10, (37+11+8.5-2)-pos, -1])cylinder(h=3,r=0.8);
  }
  }
}

//wheel space
//width, height, tpcb = PCBの板厚
module wheel_space(width, height, tpcb){
  cube([width+1, height, tpcb+2]);
}

difference(){
  mouse_base();
  translate([Rm-12, (COW-(11+3.5)), -1]) wheel_space(TW+1, WB, 1.6);
  translate([-Rm-1, (COW-(11+3.5)), -1]) wheel_space(TW+1, WB, 1.6);
}

//wheel_space(11, COW, 1.6);
//  translate([0, COW, 0]) wheel_space(12, Lw-COW, 1.6);

  translate([Rm-6, COW+20+1.6, 1.6]) rotate([0,0, 90]) sensor_holder();
  translate([-Rm+6, COW+20+1.6, 1.6]) rotate([0,0, 90]) sensor_holder();
  {
  translate([5, Lw-11, 1.6]) 
  rotate([0,0, 45]) sensor_holder();
  translate([-5, Lw-11, 1.6]) 
  mirror(){ rotate([0,0, 45]) sensor_holder();}
  }
  /*
  translate([2, 10, 27+1.6]) rotate([90,90,0]) battery();
  translate([-20, 10, 27+1.6]) rotate([90,90,0]) battery();
  */
 // ratate([90,0,0]) 
  translate([10, 0, 1.6]) rotate([90,0,90]) battery();
  translate([-18, 0,1.6]) rotate([90,0,90]) battery();

  translate([-0.5,COW+11,8.5+1.6])rotate([-180,90,0]) motor_unit();
  mirror(){translate([-0.5,COW+11,8.5+1.6])rotate([-180,90,0]) motor_unit();}

/*
//CPU
color("black") translate([-18/2, COW-35, 16]) cube([18,35,1.6]);
//pin1x10 housing 
//https://akizukidenshi.com/catalog/g/g103870/
color("black") translate([9-1.2,0,1.6]) cube([2.4, 20.5, 4.3]);
color("black") translate([-9+1.2,0,1.6]) cube([2.4, 20.5, 4.3]);

//pin1x10 header
//https://akizukidenshi.com/catalog/g/g103870/
color("black") translate([9-1.2,0,1.6+4.3+0.1]) cube([2, 20.5, 2]);
color("black") translate([-9+1.2,0,1.6+4.3+0.1]) cube([2, 20.5, 2]);
*/

translate([-Rm+12.5, COW+11+3.5+1+4, 1.6]) rotate([0,0, -90]) mountbase();
mirror(){translate([-Rm+12.5, COW+11+3.5+1+4, 1.6]) rotate([0,0, -90]) mountbase();}

translate([-15/2,60,3+1])DRV8835();
translate([-10, COW+1.5, 1.6])rotate([0,0,270]) CPUunit();

//flag
module flag(){
  color("white")translate([0,-35,45])rotate([0,-90,0]) cube([20,35,0.01]);
  color("brown")
  cylinder(h=65, r=0.5);

}
translate([-20.5, COW-5-25.6/2,1.6]) flag();
translate([20.5, COW-5-25.6/2,1.6]) flag();