//
//
// Mouse base board
//車軸50㎜位置
//
//
//ブラケット全長 x=40.3mm y=21
use <bracket.scad>
use <1717_connector.scad>
use <motordriver.scad>
use <battery.scad>
use <sensorholder.scad>


mousemount();

//1717_set();

module mousemount(){
  //mouse size
  x=90;
  y=66;
  h=1.6; //PCB厚み
  //モーターマウントの開始位置(中央で車軸を合わせる)
  shax = 50; //車軸位置
  mmx = 26; 
  mmy1 = (y/2)-11-0.1;
  mmy2 = -(y/2);
  mmz=3; //切り抜き用

  //モーターマウントの相対開始位置
  mms_x = 14; //突起までの開始位置
  mms_y = 0;
  mms_z = 0; //突起の開始z位置
  //モータマウントの大きさ
  mm_wx = 40.3;
  mm_dy = 21;
  mm_hz = 19+1.5;
  //ネジ突起
  //translate([19/2, (19.5+1.5)/2,-1.5]) cylinder(h=2.5, r=1);
  mmr = 1; //ネジ突起のシリンダー穴半径
  mmr_x = 19/2; //ネジ突起の穴位置中心
  mmr_y = (19.5+1.5)/2; //ネジ突起の穴位置中心y位置
  mmr_z = -1.5; //ネジ突起のz位置
  //タイヤホイール位置
  // translate([ -(19/2)+(17/2)+1+(44+14)*0.5*0.5, 0, -1.5])cube([wx, my, pz]);
  //位置固定用の突起
  mms_wx = 20; //突起の長さ
  mms_dy = 1.5; //突起の厚み
  mms_hz = 1.5; //突起の高さ
  //タイヤのくぼみ
  tdx = mms_wx+0.2;
  tdy = 11+0.1+mms_dy;

  //寸法補助バー
  //color("red") translate([0, -y/2, -5]) cube([90,y,h]);
  color("pink") translate([0, -10-y/2, 2]) cube([50, 2, 2]);
  //color("blue") translate([0, -y/2+0.5, 1.6]) cube([45,1.5,1+(17/2)]);
  //color("green") translate([0, -y/2+0.5, 1.6+(19/2)]) cube([45,1.5,1+(17/2)]);

  // cube([(17/2)+1+(44+14)*0.5*0.5 , 19.5+1.5, 10]);
  color("green")
  difference(){
    hull(){
      translate([y/2, 0, 0]) cylinder(h=h, r=y/2);
      translate([90-5, -(y/2)+5, 0]) cylinder(h=1.6, r=5);
      translate([90-5, (y/2)-5, 0]) cylinder(h=1.6, r=5);
    }
    translate([mmx+mms_x-0.1, (y/2)-tdy+0.1,-0.5]) cube([tdx, tdy, 3]);
    translate([mmx+mms_x-0.1, -(y/2)-0.1,-0.5]) cube([tdx, tdy, 3]);

    translate([mmx, -mmy1+0.1, 0.2]) 1717mount_mount();
    rotate([0,0,180]) mirror([1,0,0])translate([mmx, -mmy1+0.1, 0.2]) 1717mount_mount();
  }
  //ここから検証用
  translate([0,-1,15])cube([45,2,2]);
  color("pink"){
    translate([mmx, -mmy1+0.1, 0.5]) 1717mount_mount();
    rotate([0,0,180]) mirror([1,0,0])translate([mmx, -mmy1+0.1, 0.5]) 1717mount_mount();

    translate([mmx-2,(y/2)-20,1.6+4]) rotate([0,0,90])connector1717();
    rotate([0,0,-180])mirror([1,0,0]) translate([mmx-2,(y/2)-20,1.6+4]) rotate([0,0,90])connector1717();
    translate([mmx-11,-15/2,0])rotate([0,0,0])motordriver_DRV8835();

//CPU
    translate([shax-5, -(21/2), 4+8+1.6])cube([35,21,1.6]);

    translate([shax,40,15])rotate([90,0,0])cylinder(h=80, r=1.5);
    translate([46,-11,0])rotate([90,0,0])battery();
    translate([90-5,-23,0])rotate([0,0,0])ph2housing();
    translate([90-5,20,0])rotate([0,0,0])ph2housing();
    translate([89,-8.9/2,1.6])rotate([0,0,90])sw1();

  }
    translate([9,0,16.7+1.6])rotate([-90,0,45]) sensor_case(8,10, 16.8, 4, 3.6, 4, 11);
    translate([15,-8,16.7+1.6])rotate([-90,0,-45-180]) sensor_case(8,10, 16.8, 4, 3.6, 4, 11);
    translate([mmx+5,-(y/2)+3,16.7+1.6])rotate([-90,0,90]) sensor_case(8,10, 16.8, 4, 3.6, 4, 11);
    translate([mmx+5,(y/2)-3-8,16.7+1.6])rotate([-90,0,-270]) sensor_case(8,10, 16.8, 4, 3.6, 4, 11);
}