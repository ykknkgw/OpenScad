module wheelTire(tire_width, radius){
    rotate([0,90,0])
    cylinder(h=tire_width, r=radius);
}
//wheelTire(10, 15);