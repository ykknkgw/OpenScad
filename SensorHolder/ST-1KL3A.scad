module ST_1KL3A(){
  $fs=0.01;
    color("white") translate([0,0,6.2-4.65/2])sphere(4.2/2);
    color("gold") cylinder(h=6.2-4.65/2,r=4.65/2);
    color("gold") 
    cylinder(h=0.4, r=(5.8/2));
    rotate([0,0,90+45])translate([0,-0.5,0])cube([1+5.4/2, 1, 0.4]);
}

ST_1KL3A();