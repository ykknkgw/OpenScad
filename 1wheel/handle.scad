/*
handle for active daisha
*/
//active_battery_module();
active_handle();

module active_handle(){

}

color("gray")translate([0,-20,150]) rotate([90,90,0]) {
  difference(){
      cylinder(r=15, h=100);
      translate([-5,-10,-1]) cube([20, 20, 102]);
  }
}
color("black")
union(){
  translate([0,0,150])rotate([90,0,0])cylinder(r=15, h=20);
  translate([-15,-20,0])cube([30, 20, 150]);
}

module active_battery_module(){
  cube([200, 50, 160]);
}