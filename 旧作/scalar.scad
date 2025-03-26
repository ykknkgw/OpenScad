$fs=0.01;
    head_w = 10;
    head_h = 10;
    head_d = 25;
finger_w = 1;
finger_h = 10;
finger_d = 2;

module null(){
translate ([0, 0, 50*sin($t*360)])
{
translate ([-5, -3, 50-10]){
    cube([10, 25, 10]);
    cylinder(h=50, r=2);
}
translate ([0, 0, 0])
cylinder(h=50, r=2);
}
}


module camera(){
    cylinder(h=2, r=2);
}

module head(w, d, h){
    translate ([-w/2, 0, 0])
    cube([head_w, head_d, head_h]);
    
}

module hand(){
    rotate([0,-180,0])
    translate([0,0,4]){
    translate([0, 0, -4])
    cylinder(h=5, r=1);
    translate([-2.5, -1, 0])
    cube([finger_w, finger_d, finger_h]);
    translate([1.5, -1, 0])
    cube([finger_w, finger_d, finger_h]);
    translate([-3.5, -1.5, 0])
    cube([7, 3, 3]);  
    }  
}

module head_module(t){
    translate([0, head_d,0]){
    rotate([0, 0,180]){
    
    head(head_w, head_d, head_h);
    translate ([0,3, -2])
    color("RED")camera();
    translate ([0,10, 0])
    color("GRAY")hand();
    translate ([0,20, -50])
    cylinder(h=50, r=2);
    
    }
    }
}
translate ([0, 0, 50+20*sin($t*180)])
head_module(sin($t*180));
translate([-15,0,0])
cube([30, 30, 30]);
