module battery(){
  translate([-0.05,-0.05,-0.05])cube([5,18.7,8.5]);
  color("silver")cube([27.5,18.5,8.4]);
  translate([5,(18.5/2)-2.5,8]) text("battery",size=5);
}

battery();