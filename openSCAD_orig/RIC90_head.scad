//頭
x=10;
y=10;
z=0.2;
h=1;
r=1;
$fs = 0.01;

difference(){
cube([x, y, z]);
    translate([8, 0.5, -0.5])
    cylinder(h,r,center=false);
    translate([2, 0.5, -0.5])
    cylinder(h,r, center=false);
}
translate([1,7,z+0.1])
color("black")cube([8,2,0.1]);