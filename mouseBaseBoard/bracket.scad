//
//
//bracket folder 
//X軸を正面に持ってきたほうがいい？
//
use <faulhaber1717.scad>
use <1717_piniongear.scad>
use <1717_spurgear.scad>

//1717mount();
1717mount_mount();
//1717_set();

module 1717_set(){
  1717mount();
  color("pink") translate([1+(17.1/2), 1.5, 1.5+1+17/2]) rotate([90,90,0])motor1717(30);
  translate([1+(17.1/2), 0, 1.5+1+17/2]) rotate([90,90,0]) piniongear_for_1717();
  translate([14.5+8.5+1, 0, 1.5+1+17/2]) rotate([90,90,0]) spurgear_for_1717();
}

// cube([(17/2)+1+(44+14)*0.5*0.5+(25.6/2)+4-0.5 , 19.5+1.5, 10]);
// cube([(17/2)+1+(44+14)*0.5*0.5 , 19.5+1.5, 10]);
//translate([0,0,3])cube([8.5+14.5+1 , 19.5+1.5, (17/2)+1+1.5]);
//translate([0,0,0])color("blue")cube([8.5+14.5+1-10 , 19.5+1.5, (17/2)+1+1.5]);
//translate([0,0,0.5])color("blue")cube([42, 19.5+1.5, (17/2)+1+1.5]);
//translate([0,0,0])color("red")cube([24 , 19.5+1.5, (17/2)+1+1.5]);
//全長 x=42mm y=21=19.5+1.5 h=9.5*2=19
//translate([0, 2+(19.5+1.5)*2, 0]) rotate([0,0,180]) mirror([1,0,0]) 1717mount();

module 1717mount(){
  translate([0,0,1.5])
  color("black"){
    body();
    mount1();
    translate([19, 0, 0])mount2();
  }
}
//mousebaseのマウント穴位置用
module 1717mount_mount(){
  translate([0,0,1.5])
  color("black"){
    body_mount();
    mount1();
    translate([19, 0, 0])mount2();
  }
}

module body(){
  $fs = 0.01;
  mdx= 17; //mm motorの直径
  mrx = mdx/2; //mm motorの半径
  cdx = 1; //cubeの厚み
  wx = mdx+(cdx*2); //モーターマウントのマウント方向の長さ
  dy = 19.5; // 1717⁺エンコーダーの長さ
  hz = mrx+cdx; //モータマウントの高さ

  //モータマウントボディ
  difference(){
    union(){
      translate([0,1.5,0]){
        difference(){
          cube([wx,dy,hz]);
          translate([cdx+mrx+0.05, -0.1,cdx+mrx+0.05])rotate([-90, 0, 0])cylinder(h=dy+0.2, r=mrx+0.1);
          //translate([wx-0.2,2,cdx])rotate([90,0,90]) text("YN2025",size=3);
        }
      }
      translate([19/2, (19.5+1.5)/2,-1.5]) cylinder(h=2.5, r=1);
    }
    //M1.6のネジ穴
    translate([19/2, (19.5+1.5)/2, -1.6]) cylinder(h=3, r=0.6);
  }

      //translate([0,0,0]) cube([1, wx, wx]);
      //translate([wx-cdx,0,0]) cube([1, wx-cdx, wx]);
}

module body_mount(){
  $fs = 0.01;
  mdx= 17; //mm motorの直径
  mrx = mdx/2; //mm motorの半径
  cdx = 1; //cubeの厚み
  wx = mdx+(cdx*2); //モーターマウントのマウント方向の長さ
  dy = 19.5; // 1717⁺エンコーダーの長さ
  hz = mrx+cdx; //モータマウントの高さ

  //モータマウントボディ
  difference(){
    union(){
      translate([0,1.5,0]){
        difference(){
          cube([wx,dy,hz]);
          translate([cdx+mrx+0.05, -0.1,cdx+mrx+0.05])rotate([-90, 0, 0])cylinder(h=dy+0.2, r=mrx+0.1);
          //translate([wx-0.2,2,cdx])rotate([90,0,90]) text("YN2025",size=3);
        }
      }
      //translate([19/2, (19.5+1.5)/2,-1.5]) cylinder(h=2.5, r=1);
      translate([19/2, (19.5+1.5)/2, -3]) cylinder(h=3+1.6, r=1);
    }
    //M1.6のネジ穴
    //translate([19/2, (19.5+1.5)/2, -1.6]) cylinder(h=3, r=0.6);
    translate([19/2, (19.5+1.5)/2, 0]) cylinder(h=3, r=0.6);
  }

      //translate([0,0,0]) cube([1, wx, wx]);
      //translate([wx-cdx,0,0]) cube([1, wx-cdx, wx]);
}

module mount1(){
  $fs = 0.01;
  mdx= 17; //mm motorの直径
  mrx = mdx/2; //mm motorの半径
  cdx = 1; //cubeの厚み
  wx = mdx+cdx*2; //モーターマウントのマウント方向の長さ
  dy = 19.5; // 1717⁺エンコーダーの長さ
  hz = mrx+cdx; //モータマウントの高さ
  my = 1.5; //モータマウントの厚み
  pz = 1.5; //基板の厚み

  //モーターマウント部分 
  difference(){
    hull(){
      translate([0,0,0]) cube([wx/2, my, hz]);
      translate([wx/2,0,0]) cube([wx/2, my, hz*2]);
      translate([cdx+mrx+0.05, 0,cdx+mrx+0.05])rotate([-90, 0, 0])cylinder(h=my, r=mrx+0.1);
    }
    translate([wx/2, -0.1, hz])rotate([-90,0,0])motor1717_screwhole();
    translate([wx/2, -0.1, hz])rotate([-90,0,0])cylinder(h=2.5, r=4);
  }
  translate([1+8.5+14.5-10, 0, -pz])cube([20, my, pz]);
}

module mount2(){
  $fs = 0.01;
  //モーターまわりの変数
  mdx= 17; //mm motorの直径
  mrx = mdx/2; //mm motorの半径
  cdx = 1; //cubeの厚み
  wx = mdx+cdx*2; //モーターマウントのマウント方向の長さ
  dy = 19.5; // 1717⁺エンコーダーの長さ
  hz = mrx+cdx; //モータマウントの高さ
  pr = 2; //mm flag Pole raidus
  fr = 1.1; //mm Flag pole raidus
  //スパーギアとピニオンギアの軸間距離計算方法
  st = 44; //スパーギアの歯数
  pt = 14; //ピニオンギアの歯数
  gm = 0.5; //ギアモジュール
  al = (st+pt)*gm*0.5; //軸間距離は (歯数1＋歯数2)＊モジュール/2 (44+14)*0.5*0.5
  ll = 5; //mount2の端からの軸間距離
  ra = 3.1*0.5; //mm車軸の径
  la = 21; //mm車軸の長さ
  //タイヤ
  rt = 14.5; //タイヤの半径以上になってること
  //車軸マウント
  ax = 5+14.5; //mm 車軸マウントの長さ
  ay = 3; //mm 車軸マウントの厚み
  az = wx; //mm 車軸マウントの高さ

  difference(){
    cube([ax, ay, az]);
    translate([ll, -0.1, 8.5+1])rotate([-90, 0,0])cylinder(h=la, r=ra);
  }

  translate([ax+pr-0.5,pr,0])
  
  difference(){
    hull(){
      cylinder(h=wx, r=pr);
      rotate([0,0,180])cube([pr, pr, wx]);
    }
    translate([0,0,2]) cylinder(h=wx-1, r=fr);
  }
}