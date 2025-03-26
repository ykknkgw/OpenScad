$fs=0.01;


/*
module motormount(){
    
}

translate([-5,-2.5,2])
cube([30,5,10]);


module M2screw(length){
    //AHN2-4,6,8
    color("silver") cylinder(h=length,r=1); //M2
    color("silver") cylinder(h=0.3,r=1.7);//頭
}


M2screw(8);//AHN2-8
translate([20,0,0])
    M2screw(8);
render(convexity = 2) 
difference(){
    cube([30,5,10]);
    translate([8,2.5,-1])
    cylinder(h=5, r=0.5);
        translate([15+8,2.5,-1])
    cylinder(h=5, r=0.5);
    
    //タイヤ用のピンの穴
    translate([15,-1,5])
    rotate([0,90,90])
    cylinder(h=12, r=0.5);
    

    translate([8,-1,5])
    rotate([0,90,90])
    cylinder(h=12, r=0.5);
    
    //モーター穴
    translate([15+8,-1,5])
    rotate([0,90,90])
    cylinder(h=12, r=4);    
}


*/