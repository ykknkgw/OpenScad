//motor 1717 modeling
//encoder
//https://www.shinkoh-faulhaber.jp/JP_data_edition_2020/JP_IEH2-4096_DFF.pdf
//https://www.shinkoh-faulhaber.jp/products/series/1717sr
//Author Y.Nakagawa
//Date: 2024/12/07
//revised: 2025/1/10

motor1717(25);
//motor1717(5);
//connector1717();
//encoder1717();
//motor1717_screwhole();


module motor1717(rotate){
  translate([0,0,-17])rotate([0,0,rotate])motor1717_body();
  translate([0,0,-17-2.4]) encoder1717();
}

module motor1717_body(){
  $fs = 0.01;
  mr1 = 17.1/2; //mm motor radius //モーター半径
  mr2 = 15.9/2; //mm motor 肩のスボミの径
  mh1 =14.5; //mm motor length //モーターのスボミまでの長さ
  mh2 =17.1-mh1; //mm motor length //モーターのスボミの長さ
  axr =1.5/2; //mm motor axis radius //モーター軸の半径
  axl = 8; //mm motor axis length //モーター軸の長さ
  axl2 = 6; //mm 使わないが、軸が出てる長さは6㎜
  cr1 = 6/2; //mm motor center sholder big radius
  cr2 = 3.5/2; //mm motor center sholder small radius
  ch1 = 1; //mm from motor 
  ch2 = 2.1; //mm from motor

  difference(){
  union(){
    color("black")
      hull(){
        translate([0,0, mh2]) cylinder(h=mh1, r=mr1);
        translate([0,0,0]) cylinder(h=mh1, r=mr2);
      }
      color("whitesmoke")translate([0,0,mh1+mh2])cylinder(h=axl, r=axr);
      translate([0,0,mh1+mh2])cylinder(h=ch1, r=cr1);
      translate([0,0,mh1+mh2])cylinder(h=ch2, r=cr2);
  }
    translate([0,0,mh1+mh2-1.6]) motor1717_screwhole();
  }
}

module motor1717_screwhole(){
  //M1.6x1.6mm
  $fs=0.01;
  rcircle = 5; //同心円の半径
  height = 0; //中心からの距離
  sh = 1.6; // ネジの長さ
  sr = 0.8; // ネジ穴の半径 M1.6

  for(angle=[0:60:360]){
      translate([rcircle*sin(angle),rcircle*cos(angle),height]) cylinder(h=1.6+1, r=0.8);
  }
}

module encoder1717(){
  $fs=0.01;
  eh = 2.4; //mm encoder height
  er = 15/2; //mm encoder radius
  el = 15-13.32; //mm encoder luck
  ed = 15;

  color("black")
  difference(){
    cylinder(h=eh, r=er);
    translate([-er,er-el,-1])cube([ed+2, ed+2, eh+2]);
  }
    
}
