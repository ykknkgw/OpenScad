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
  translate([-150, 500, 800]) fryer_controller();
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
  translate([0,0,450-30])cube([950, 600, 30]);
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
}

module fryer_oilbox(){
  color("silver"){
    translate([0,0,0]) drawer(215, 400, 100);
    translate([0,0,102]) drawer(215, 400, 200);
  }
}

module drawer(x, y, z) {
  t=2;
  difference(){
    translate([0,0,0]) cube([x,y,z]);
    translate([t,t,t]) cube([x-t*2, y-t*2, z]);
  }
}

module fryer_controller(){
  color("silver") {
    cube([150, 100, 250]);
    translate([50, 40, 260]) cylinder(h=20, r=15);
    translate([100, 40, 260]) cylinder(h=20, r=15);
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
  }
}

module rotary_plate(){
  t=2;
  hull(){
    translate([250, 300, 0]) cylinder(h=450, r=30);
    translate([550, 300, 0]) cylinder(h=450, r=30);
  }
}
