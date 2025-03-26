//Drip tray A
R280_driptrayB();

module R280_driptrayA(x){
    w=5;
    d=400;
    h=20;

  color("silver"){
    difference(){
        cube([x, d, h]);
        translate([5,5,2])cube([x-10, d-10, h]);
        translate([x-5,100,5])cube([10, 100, 50]);
        translate([-2,100,5])cube([10, 100, 50]);     
    }

    for(i=[10:20:x-20]){
        translate([i, 0, 0])cube([w,d,h]);
    }
  }
}

module R280_driptrayB(){
    w = 350;
    x=5;
    d=400;
    h=20;
    hh=50;
    ht=6;
    t=2; //厚み

  color("silver"){
    cube([w, d, t]);
    hull(){
      translate([0,0,0]) cube([t, d, h/2]);
      translate([0,h/2,h-h/2]) rotate([0,90,0])cylinder(h=t, r=h/2);
      translate([0,d-h/2,h-h/2]) rotate([0,90,0])cylinder(h=t, r=h/2);
    }
    translate([w-t, 0, t])
    hull(){
      translate([0,0,0]) cube([t, d, h/2]);
      translate([0,h/2,h-h/2]) rotate([0,90,0])cylinder(h=t, r=h/2);
      translate([0,d-h/2,h-h/2]) rotate([0,90,0])cylinder(h=t, r=h/2);
    }
    
    translate([w/2-3, 20, t])handle();

    for(i=[10:20:x-20]){
        translate([i, 0, 0])cube([w,d,h]);
    }
  }
}

//handle();
module handle(){
  difference(){
  hull(){
    hull(){
      cube([6, 50, 25]);
      translate([0, 25, 25]) rotate([0,90,0]) cylinder(h=6, r=25);
    }
    translate([0, 350-50, 0])
    hull(){
      cube([6, 50, 25]);
      translate([0, 25, 25]) rotate([0,90,0]) cylinder(h=6, r=25);
    }
  }
  color("pink")
  translate([0,6,-6])
  hull(){
    hull(){
      translate([-3,0,0]) cube([10, 50, 25]);
      translate([0, 25, 25]) rotate([0,90,0]) cylinder(h=10, r=25);
    }
    translate([-3, 350-50-6*2, 0])
    hull(){
      translate([-3,0,0]) cube([10, 50, 25]);
      translate([0, 25, 25]) rotate([0,90,0]) cylinder(h=10, r=25);
    }
  }
  }
}