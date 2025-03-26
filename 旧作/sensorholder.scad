use <OS5RKA5111A.scad>
use <ST-1KL3A.scad>

module sensor_holder_old(){
  color("black")
  difference(){
    $fs=0.01;
    hull(){
        translate([0,0,5.1+4.7+1+2-(7/2)]) rotate([0,90,0])cylinder(h=9, r=7/2);
        translate([0,-3.5,0]) cube([9,7,10]);
    }

    translate([-1,0,1+(4.7)+1+(5.1/2)]) rotate([0,90,0]) cylinder(h=12, r=5.1/2);
    translate([-1,0,1+(4.8/2)]) rotate([0,90,0]) cylinder(h=12, r=4.8/2);
  }
translate([-1,0,1+(4.7)+1+(5.1/2)]) rotate([0,90,0])OS5RKA5111A();
translate([-0.4,0,1+(4.7/2)]) rotate([0,90,0])ST_1KL3A();
}
//sensor_holder();

//Lx, Ly = LEDの位置xy
//Ix, Iy = IRの位置xy
//Ld =LEDの直径+0.1
//Id =IR sensorの直径+0.1


module sensor_case(width, depth, height,Lx, Ly, Ix,Iy){
    $fs=0.01;
    Ld=5.8+0.1; //LEDベース直径+0.1
    LLd=5+0.1; //LEDケース直径+0.1
    Id=5.4+0.3; //IRセンサーベース部直径+誤差
    ILd=4.65+0.3; //IRセンサー直径＋誤差
    IRB_diameter=6+0.1; //外形ベース寸法
    IRL_diameter=5.4+0.1;
    difference(){
        cube([width, height, depth]);
        //LED
        translate([Lx, Ly, -1])
        union(){
          cylinder(h=2, r=Ld/2);
          cylinder(h=depth+2, r=LLd/2);
        }
        //IR sensor
        translate([Ix, Iy, -1])rotate([0,0,0])         
        union(){
            cylinder(h=depth+2, r=ILd/2);
            cylinder(h=2, r=Id/2);
            rotate([0,0,90+45]) translate([0,-0.6,0]) cube([1.1+5.4/2, 1.2, 1.4]);
        }      
    }  
}


sensor_case(8,10, 16.8, 4, 3.6, 4, 11);
//translate([-1, 0, IR_length])
//rotate([0,90,0])


module sensor_holder(){
    width=8;
    height=16+0.8;
    depth=10;
    LED_length=7;
    IR_length=5.6;
    
    LED_hole_x =4;
    LED_hole_y =3.6;
    
    LED_diameter = 5;
    IR_diameter=6+0.1;
    IRL_diameer=5.8+0.1;
    IR_hole_x = 4;
    IR_hole_y=11;
    
    
   //   translate([-1, 0, IR_length])rotate([0,90,0])rotate([0,0,90+45])translate([0,-0.6,0])cube([1.1+5.4/2, 1.2, 1.4]);
    
    
  color("black")


  difference(){
    $fs=0.01;
    translate([0, -(width/2),0])cube([depth, width, height]);

    translate([-1,0,IR_length+LED_length]) rotate([0,90,0]) cylinder(h=1+1, r=(IR_diameter/2));
    translate([-1,0,IR_length])rotate([0,90,0])cylinder(h=1.5, r=(5.8/2));
      translate([-1, 0, IR_length])rotate([0,90,0])rotate([0,0,90+45])translate([0,-0.6,0])cube([1.1+5.4/2, 1.2, 1.4]);

    translate([-1,0,IR_length+LED_length]) rotate([0,90,0]) cylinder(h=depth+2, r=(LED_diameter+0.1)/2);
    translate([-1,0,IR_length]) rotate([0,90,0]) cylinder(h=depth+2, r=4.8/2);
  }
//translate([0,0,IR_length+LED_length]) rotate([0,90,0])OS5RKA5111A();
//translate([0,0,IR_length]) rotate([0,90,0])ST_1KL3A();
}