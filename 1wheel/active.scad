/**
*
*

rad=10;
active_caster(rad);
**/

module active_caster(rad){
    translate([0,0,rad]){
  translate([0,0,-rad*2+20]){
    difference(){
      sphere(rad);
      translate([0,0,rad])
      cube([rad*2,rad*2,rad*2], center = true);
    }
    cylinder(h=rad, r=rad);
    translate([0,0,rad])cube([rad*3,rad*3, rad], center=true);  
    }
}
}
