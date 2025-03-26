use <1717.scad>
use <miniz-wheel.scad>
use <1717piniongear.scad>
include <param.scad>

module 1717mount_bracket(){
  $fs=0.01;
  1717_length = 17; //1717 length
  encoder_length= 2.4+0.6; //encoder length
  1717_diameter = 15; //1717 diameter
  encoder_diameter = 13.3; //encoder diameter
  tire_diameter = 25.6; //tire diameter
  length = 1717_length+encoder_length;

hull(){
  translate([8.5, 0, 8.5])rotate([-90,0,0])cylinder(h=1.5,r=8.5);
  cube([1717_diameter+2, 1.5, 1+(1717_diameter/2)]);
  translate( [1+1717_diameter/2, 0,0])
  cube([1+1717_diameter/2, 1.5, (2+1717_diameter)]);
  translate( [1+1717_diameter, 0,0])
  cube([11-1+tire_diameter/2, 3, (1+1717_diameter/2)+tire_diameter/2]);
}
  translate([0,1.5,0]) 
  difference(){
    cube([1717_diameter+2, length, (1717_diameter/2)+1]);
    rotate([90,0,0])
    translate([(1717_diameter+2)/2,1+1717_diameter/2,-length-1]) cylinder(h=length+2,r=1717_diameter/2);
  }


}
//translate([0,1.5,0]) 
//1717mount_bracket();



//
/*
pinion_d = 7; //ピニオンの直径
Tpinion = 2.1; //ピニオンの厚み
spur_d=22; //スパーギアの直径
Tspur = 2.1; //スパーギアの厚み
1717l=19+3+2; //1717+エンコーダの長さ+カラー+ピニオンの厚み
Tpcb=1.6; //基板の板厚
*/

module motor1717unit(){
  Dpinion = 7;
  Dspur = 22;
  Dtire = 25.6;
  Tpinion =2;
  Tspur=2;
  Ttire=8.5;
  Tshoulder=3.1;
//車軸中心で書き直したモータユニット
  rotate([90,0,0]) miniz_wheel();
 // translate([pinion_d/2+spur_d/2,-Ttire-Tpinion-Tshoulder,0])
 //translate([0, -Ttire-Tpinion-1-Tshoulder, 0])
 translate([Dpinion/2+Dspur/2, -Ttire-Tpinion-1-Tshoulder, 0])
 rotate([-90,270,0]) motor1717();
   translate([Dpinion/2+Dspur/2,-Ttire,0])rotate([90,0,0])piniongear_for_1717();
}

//motor1717unit();
//translate([-Dtire/2,-L1717-Ttire,0]) 
module mountbase_body(){
$fs=0.01;
fl = 17;//17; //faulharber1717 17length
fr = (15/2);
sl = 1.6; //screw length 1.6(mm)
sr = 0.8; //screw hole 0.3(mm)
//cube([Lbase-10, Wbase, Tbase]);
hull(){
  cube([Lbase, 1.5, 8.5]);
  translate([8.5, 0, 8.5])rotate([-90,0,0])cylinder(h=1.5,r=8.5);
  translate([Lbase-8.5, 0, 8.5])rotate([-90,0,0])cylinder(h=1.5,r=8.5);
}
difference(){
  hull(){
    cube([Lbase, 3, 8.5*2]);
    translate([8.5, 0, 8.5])rotate([-90,0,0])cylinder(h=3,r=8.5);
    //translate([Lbase-8.5, 0, 8.5])rotate([-90,0,0])cylinder(h=3,r=8.5);
  }
  translate([-1, -1, 1]) cube([1+2+15, 10,8.5*2]);
}
difference(){
    hull(){translate([1+(15/2)+(7/2)+11+(25.6/2)+3.5-2,0,0])cube([2,2,17]);
translate([1+(15/2)+(7/2)+11+(25.6/2)+3.5,2,0]) cylinder(h=17, r=2);
    }
translate([1+(15/2)+(7/2)+11+(25.6/2)+3.5,2,3]) cylinder(h=15, r=2.3/2);
translate([1+(15/2)+(7/2)+11+(25.6/2)+3.5,2,-1]) cylinder(h=5,r=(1.6/2));
}
difference(){
cube([15+2, Wbase, 8.5]);
translate([1+(15.1/2), 1, 1+(15.1/2)])
rotate([-90,0,0]) cylinder(h=Wbase+2,r=(15.1/2));
}
}

module mount_screwholes(){
translate([1+(15.1/2), -1, 1+(15.1/2)])
rotate([-90,0,0]) cylinder(h=3,r=((14+2)*0.5/2)+0.1);
translate([1+(15.1/2), 0, 1+(15.1/2)])
rotate([-90,0,0])
    for(angle=[0:60:360]){
        translate([5*sin(angle),5*cos(angle),-1])
            cylinder(h=3, r=1.7/2);
    }
translate([8.5+3.5+11, -1, 1+(15.1/2)])
rotate([-90,0,0]) cylinder(h=5,r=(3/2));

//ネジ穴
translate([2, 5, -1]) cylinder(h=3,r=(1.6/2));
translate([2, 15, -1]) cylinder(h=3,r=(1.6/2));
translate([14, 5, -1]) cylinder(h=3,r=(1.6/2));
translate([14, 15, -1]) cylinder(h=3,r=(1.6/2));
}

module mountbase(){
  $fs=0.01;
  difference(){
    mountbase_body();
    mount_screwholes();
  }
/*
  //ネジ穴合わせ用
  translate([0,0,-2]){
translate([2, 5, -1]) cylinder(h=3,r=(1.6/2));
translate([2, 15, -1]) cylinder(h=3,r=(1.6/2));
translate([14, 5, -1]) cylinder(h=3,r=(1.6/2));
translate([14, 15, -1]) cylinder(h=3,r=(1.6/2));
  }
*/
}

mirror()mountbase();
/*
translate([0,-1,-1])
color("blue")cube([39.5,2,10]);

translate([0, -20, -1])rotate([0,0,180])
mountbase();
*/
//mount_screwholes();