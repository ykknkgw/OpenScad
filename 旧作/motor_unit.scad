use <1717.scad>
use <spurgear.scad>
use <1717piniongear.scad>
use <miniz-wheel.scad>
use <1717mount.scad>

Rm=34; //半径
Lw=90;//全長
COW=37;//Center of Wheel 車軸中心
WB=22; //wheel base length
TW=11; //Tire Width
Wmount=Rm-(TW+1); //片側のマウントの幅
Lmount=40; //8.5+7.5+11+11+1+1 モータマウントの長さ
Tmount=1;

module motor_unit(){
  motor1717_old();
  translate([0,0,17+2.4+3-0.3]) piniongear_for_1717();
  //translate([0,13,17+8.1]) spurgear_for_1717();
  translate([0,14.5,17+2.4+3+10.55]) rotate([180,0,0]) miniz_wheel();
}





/*
module motormount(){
  difference(){
  //kamaboko
  hull(){
    intersection(){
      translate([8.5, 0, 7.1]) rotate([0,90,90])cylinder(h=(17+2.4+1), r=8.5);
      cube([34.5, (17+2.4+1), 16]);
    }
    intersection(){
      translate([34.5-8.5, 0, 7.1]) rotate([0,90,90])cylinder(h=(17+2.4+1), r=8.5);
      cube([34.5, (17+2.4+1), 16]);
    }
    cube([34.5, (17+2.4+1), 8]);
  }
  //cube
  translate([0,1,8.5]) cube([17, (17+2.4+1), 7.5]);
  translate([15.1/2+1,1,8.5]) rotate([-90,90,0])cylinder(h=(17+2.4+1),r=15.1/2);
  translate([15+1.9,2,1.5]) cube([22, (17+2.4+1), 22]);
  }
}
motormount();
*/

translate([8.5, 1.6+19.4, 8.5]) rotate([90,90,0]) motor_unit();
mountbase();