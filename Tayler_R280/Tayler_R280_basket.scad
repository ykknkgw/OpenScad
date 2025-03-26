//basket

R280_basket();
module R280_basket(){
    w=150;
    d=400;
    h=200;
    ew=30;
    el=200;
    color("dimgray"){
difference(){
hull(){
    translate([w/2, d+el, h-10]) cylinder(h=5, r=ew/2);
    translate([(w/2)-ew/2, d, h-10]) cube([ew,el-10,5]);
}
hull(){
    translate([w/2, d+el, h-10]) cylinder(h=5, r=-5+ew/2);
    translate([5+(w/2)-ew/2, d, h-13]) cube([ew-10,el,10]);
}
}
difference(){
    cube([w,d,h]);
    translate([5,5,5])cube([w-5*2,d-5*2,h^5*2]);
}
}
}