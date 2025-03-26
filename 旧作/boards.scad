//https://akizukidenshi.com/goodsaffix/AE-DRV8835-S_20210526.pdf

module DRV8835_base(){
  translate([1.15,1.19,1.51])
    for(pins=[0:1:5]){
      translate([pins*2.54,7.62,0]) color("gold")cylinder(h=0.1,r=(1.2/2));
      translate([pins*2.54,0,0]) color("gold")cylinder(h=0.1,r=(1.2/2));
    }
    color("green")
    cube([15,10,1.6]);
    translate([1.5,4,1.2])text("DRV8835", size=2);

}
module DRV8835(){
  $fs=0.01;
  difference(){
    DRV8835_base();
    translate([1.15,1.19,-0.1])
    for(pins=[0:1:5]){
      translate([pins*2.54,0,0]) cylinder(h=2,r=(0.9/2));
      translate([pins*2.54,7.62,0]) cylinder(h=2,r=(0.9/2));
    }
 }
}

//DRV8835();
CPUunit();
module CPUunit(){
translate([0,0,4.1+2+0.2])
  CPUboard();
  translate([7.5,1,0.2])
  1x10pins();
  translate([7.5,0,0.2])
  1x10housing();
  translate([7.5,19,0.2])
  1x10pins();
  translate([7.5,18,0.2])
  1x10housing();
}


//https://akizukidenshi.com/catalog/g/g103870/
module 1x10housing(){
  color("gold")
  translate([0, 1,-2.4])
  for(pins=[0:1:9]){
    translate([pins*2, 0, 0]) cylinder(h=(2.4),r=(0.7/2));
  }
  color("black")
  translate([-1.125, 0, 0])
  cube([20.5, 2.4, 4]);

}

//https://akizukidenshi.com/catalog/g/g103867/
module 1x10pins(){
  $fs=0.01;
  color("gold")
  for(pins=[0:1:9]){
    translate([pins*2, 0, 0]) cylinder(h=(2.8+4+2),r=(0.7/2));
  }
  translate([0,0,4])
  color("black")
  for(pins=[0:1:9]){
    translate([pins*2, 0, 0]) cylinder(h=(2),r=(2.3/2),$fn=6);
  }
}

module CPUboard(){
  $fs=0.01;
  color("green") 
  difference(){
    cube([35,20,1.6]);
    translate([7.5, 1, -0.5])
    for(pins=[0:1:9]){
      translate([pins*2, 0, 0]) cylinder(h=3,r=(0.8/2));
      translate([pins*2,18, 0]) cylinder(h=3,r=(0.8/2));
    }
  }
  difference(){
    translate([7.5, 1, -0.5])
    for(pins=[0:1:9]){
      translate([pins*2, 0, 1.6]) cylinder(h=0.6,r=(1.3/2));
      translate([pins*2,18, 1.6]) cylinder(h=0.6,r=(1.3/2));
    }
    translate([7.5, 1, -0.5])
    for(pins=[0:1:9]){
      translate([pins*2, 0, 0]) cylinder(h=3,r=(0.8/2));
      translate([pins*2,18, 0]) cylinder(h=3,r=(0.8/2));
    }
  }
  translate([1.5,4,1.2])text("CPU 20x35", size=2);
  translate([26,10-4.5,1.6]) color("silver")cube([9,9,3]);
}