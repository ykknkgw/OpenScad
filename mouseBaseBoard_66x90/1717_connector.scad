//
//faulhaber1717 connector
//Author Y.Nakagawa
//Date: 2025/1/10
//
connector1717();

module connector1717(){
  s1w = 3; //mm 小さい突起の幅
  s1d = 1; //mm 小さい突起の厚み
  s1h = 1.5; //mm 小さい突起の高さ
  s2h = 4; //mm コネクタ上部の高さ
  s2d = 1.5; //mm コネクタ上部の幅
  s2w =  6; //mm コネクタ上部の幅
  s2w2 = 3.8; //mm コネクタ上部の中幅
  s2d2 = 7.25; //mm
  s3h = 6.5; //mm 
  s3d =12.22; //mm
  s3w = 6.1; //mm
  s4h = 3.65; //
  s4w = 1; //mm
  s4d = 1.76; // 
  s5w = 2.3;
  s5d = 1;
  s5h = 2;

  color("lightgray"){
    translate([s3w,(s3d-s4d)/2,0])cube([s4w, s4d, s4h]);
    cube([s3w, s3d, s3h]);

    translate([0,0,s3h])
    {
      union(){
        translate([(s2w-s1w)/2,0,s2h-s1h]) cube([s1w, s1d, s1h]);
        difference(){
        translate([0,s1d,0]) cube([s2w, s2d, s2h]);
        translate([(s2w-s5w)/2,s1d,s2h-s5h+0.1]) cube([s5w, s5d, s5h]);
        }
      }
      translate([(s2w-s2w2)/2,s1d+s2d,0]) cube([s2w2, s2d2, s2h]);

      //opposite side
      translate([s2w, s1d*2+s2d*2+s2d2,0]) rotate([0,0,180])
      union(){
        translate([(s2w-s1w)/2,0,s2h-s1h]) cube([s1w, s1d, s1h]);
        difference(){
        translate([0,s1d,0]) cube([s2w, s2d, s2h]);
        translate([(s2w-s5w)/2,s1d,s2h-s5h+0.1]) cube([s5w, s5d, s5h]);
        }
      }
    }
  }
}