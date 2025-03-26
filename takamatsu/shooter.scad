difference(){
union(){
translate([0,0,0])cube([2, 300, 400]);
translate([0,0,0])cube([400, 2, 400]);
translate([400,0, 0])cube([2, 300, 400]);
translate([0,300,50])cube([400, 2, 350]);
translate([0,0,0])cube([400, 400, 2]);
translate([0,230,])rotate([55, 0,0])cube([400, 2, 280]);
translate([0,100,200])rotate([-55, 0,0])cube([400, 2, 250]);
}

translate([-10, 0, -5])
cube([20, 500, 500]);
}