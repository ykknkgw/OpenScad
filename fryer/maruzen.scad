//
//マルゼン IHロータリーフライヤー
//
use <foodly.scad>

color("blue")
translate([450, 1000, 0])rotate([0,0,0])foodly();
maruzen_rotary_fryer();
module maruzen_rotary_fryer(){
  translate([0,0,430]) fryer_body();
  translate([0,0,430]) fryer_oilpan();
  translate([0,0,800]) fryer_oilshield();
  fryer_base();
  control_box();
  translate([950, 600, 450])rotate([0,0,180])fryer_oilbox();
  translate([950-215, 200, 450+300]) food_basket();
  translate([0,0,450]) color("dimgray")rotary_plate();
  //cube([10,600,10]);
  //cube([735,10, 10]);
}

module fryer_body(){
  color("silver"){
    cube([735, 2, 450]);
    cube([2, 600, 450]);
    translate([0,600-2,0]) cube([735,2,450]);
    translate([735-2,0]) cube([2,600, 450]);
  }
}

module fryer_oilpan(){
  color("silver"){
  difference(){
    hull(){
      translate([290,290,0])cylinder(h=400, r=290);
      translate([735-20, 0,0]) cube([10, 580, 400]);
    }
    hull(){
      translate([290+2,290+2,2])cylinder(h=400, r=290-2);
      translate([735-20-2, 2,2]) cube([10, 580-4, 400]);
    }
  }
  }
}

module fryer_oilshield(){
  filet=50;
  color("silver"){
  hull(){
    translate([0,0,0])cube([733-filet *2,2, 250]);
    translate([0,0,0])cube([733, 10, 125]);
    translate([733-filet, 0, 250-filet])rotate([90,0,0])cylinder(h=2, r=filet);
  }
  hull(){
    translate([0,0,0])cube([2,600-filet*2-2, 250]);
    translate([0,0,0])cube([2, 600-2, 125]);
    translate([0, 600-filet, 250-filet])rotate([0,90,0])cylinder(h=2, r=filet);
  }
  }
}

module fryer_base(){
  color("silver"){
  //table
  translate([0,0,450-30])cube([950, 600, 30]);
  //legs
  for(i=[0:870:950]){
    translate([i+20, 20, 0])cube([40,40,450]);
    translate([i+20, 600-85-20, 0])cube([40,40,450]);
  }
  }
}

module control_box(){
  color("silver") {
    translate([950-100, 75, 450])cylinder(h=1400-450-240, r=25);
    translate([950-215, 0, 450]) cube([215, 200,200]);
  }
  translate([950-240, 0, 1400-300]){
      color("silver"){
      cube([240, 140, 300]);
      difference(){
        translate([0, 140,0]) cube([240, 10, 220]);
        hull(){
          translate([70, 155, 120])rotate([90,0,0])cylinder(h=30, r=10);
          translate([170, 155, 120])rotate([90,0,0])cylinder(h=30, r=10);
          translate([70, 155, 180])rotate([90,0,0])cylinder(h=30, r=10);
          translate([170, 155, 180])rotate([90,0,0])cylinder(h=30, r=10);
        }
      }
      }
    color("black"){
      translate([120, 150,250]) rotate([90,0,0])cylinder(h=15, r=10);
        hull(){
          translate([70, 141, 120])rotate([90,0,0])cylinder(h=30, r=10);
          translate([170, 141, 120])rotate([90,0,0])cylinder(h=30, r=10);
          translate([70, 141, 180])rotate([90,0,0])cylinder(h=30, r=10);
          translate([170, 141, 180])rotate([90,0,0])cylinder(h=30, r=10);
        }
    }
    }
}

module fryer_oilbox(){
  color("silver"){
    translate([0,0,0]) drawer(215, 400, 100);
    translate([0,0,102]) drawer(215, 400, 200);
  }
}

//drawer(215, 400, 100);
module drawer(x, y, z) {
  t=2;
  difference(){
    translate([0,0,0]) cube([x,y,z]);
    translate([t,t,t]) cube([x-t*2, y-t*2, z]);
    translate([(x/2), 15, z-20]) 
    hull(){
      translate([-25, 0, 0]) rotate([90, 0,0]) cylinder(h=20, r=10);
      translate([25, 0, 0]) rotate([90, 0,0]) cylinder(h=20, r=10);
    }
  }
}


module food_basket(){
  t=2; 
  color("whitesmoke")
  difference(){
    hull(){
      translate([0,0,0]) cube([t, 400, 130]);
      translate([215,0,0]) cube([t, 400, 200]);
    }
    hull(){
      translate([t,t,t]) cube([t, 400-t*2, 130]);
      translate([215-t,t,t]) cube([t, 400-t*2, 200]);
    }
  }
  color("black"){
  difference(){
    translate([1,1,80])cube([210, 400-4, 2]);
    translate([3,3,79])cube([210-4, 400-8, 4]);
  }
  for(y=[10:15:390]){
    translate([2, 10+y, 80]) cube([210, 2, t]);
  }
  }
}

module rotary_plate(){
  t=2;
  hull(){
    translate([250, 300, 0]) cylinder(h=450, r=30);
    translate([550, 300, 0]) cylinder(h=450, r=30);
  }

  rotate([0, -30, 0])translate([100,0,0])
  difference(){
    hull(){
      translate([300, 300, 0])cylinder(h=t, r=300);
      translate([300, 0, 0])cube([735-300, 600, t ]);
    }
    translate([0, 0, -5])cube([100, 600, 10]);
  }
}