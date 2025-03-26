//motor 1717 modeling
//https://www.shinkoh-faulhaber.jp/JP_data_edition_2020/JP_IEH2-4096_DFF.pdf
//https://www.shinkoh-faulhaber.jp/products/series/1717sr
//Author Y.Nakagawa
//Date: 2024/12/07

motor1717();

module motor1717(){
el=2.4; //encoder height with encoder 19.4(mm)

    translate([0,0,el])color("silver") motor1717_body();
    color("black")motor1717_encoder();
}

module motor1717_screwhole(hscrew, rscrew, rcircle, bheight){
    for(angle=[0:60:360]){
        translate([rcircle*sin(angle),rcircle*cos(angle),bheight])
            cylinder(h=hscrew, r=rscrew);
    }
}

module motor1717_body(){
$fs=0.01;
fl = 17;//17; //faulharber1717 17height 
fr = (17/2);
sl = 1.6; //screw length 1.6(mm)
sr = 0.8; //screw hole 0.3(mm)
a1r=3; //axis sholder base 1 6mm diameter
a2r=1.75; //axis sholder base 2 3.5mm diameter
a1h=1; //height is measured from body
a2h=2.1; //height is from body
ar=1.5;//axis diameter 1.5mm
ah=8.1;//height is measured from body
    
  
difference(){
    cylinder(h=fl, r=fr);
    motor1717_screwhole(sl, sr, 5, fl-sl+0.1);
}

translate([0,0, fl])
    cylinder(h=a1h, r=a1r);
translate([0,0,fl])
    cylinder(h=a2h, r=a2r);
translate([0,0,fl])
    cylinder(h=ah, r=ar);
}

module motor1717_encoder(){
$fs=0.01;
el=2.4; //encoder height with encoder 19.4(mm)
er=(15/2);
    difference(){
        cylinder(h=el, r=er);
        translate([5.8, -10,-3])
        cube([17,20,el+5]);
    }
}


//color("red") screwhole(sl, sr, 5, fl-sl+0.1);

