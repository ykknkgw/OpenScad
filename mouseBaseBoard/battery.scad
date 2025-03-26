module battery(){
  translate([-0.05,-0.05,-0.05])cube([5,18.7,8.5]);
  color("silver")cube([27.5,18.5,8.4]);
  translate([5,(18.5/2)-2.5,8]) text("battery",size=5);
}

module ph2housing(){
  translate([0,0,3.4]) cube([5.9, 4.5, 6]);
    for(length=[1.95: 2:5.9]){
         translate([length,1,0]) cylinder(h=3.4,r=0.5);
    }
}

module sw1(){
  translate([0,0,3.4]) cube([8.5, 3.7, 3.5]);
  translate([(8.5/2-2),(3.7/2)-(1.5/2),3.4]) cube([1.5, 1.5, 3+3.5]);
    for(length=[1.75-0.25:2.5:8.5]){
         translate([length,1,0]) cube([0.5,0.3,3.9]);
    }

}

translate([10,10,10])sw1();
translate([20,20,20]) ph2housing();
battery();