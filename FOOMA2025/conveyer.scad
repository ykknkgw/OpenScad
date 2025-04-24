//

module conveyer(width, length, height){
    translate([0,width,height-50]){
      color("blue"){
        difference(){
          hull(){
            translate([25,-10,25]) rotate([90,0,0])cylinder(r=25, h = width-20);
            translate([25+length-25,-10,25]) rotate([90,0,0])cylinder(r=25, h = width-20);
          }
          hull(){
            translate([2+25+20,-10+1,25]) rotate([90,0,0])cylinder(r=24, h = width+2-20);
            translate([length-2,-10+1,25]) rotate([90,0,0])cylinder(r=24, h = width+2-20);
          }
        }
      }
      //rollers
      color("silver"){
      translate([25,0,25]) rotate([90,0,0])cylinder(r=24, h = width);
      translate([length-2,0,25]) rotate([90,0,0])cylinder(r=24, h = width);
      }
    }

    //legs
    color("silver"){
      translate([0,0,0])cube([50, 5, height-25]);
      translate([0,width,0])cube([50, 5, height-25]);
      translate([length-25,0,0])cube([50, 5, height-25]);
      translate([length-25,width,0])cube([50, 5, height-25]);
    }
}

conveyer(100, 200, 100);
