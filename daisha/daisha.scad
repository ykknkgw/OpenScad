/**
rad=75;

height_tire = rad*2;

**/
daisha(600,800, 700, 75);

module daisha(width,length, height, rad){
  color("silver") translate([width/2,30,rad*2]) rotate([90,0,0]) handle(width-100, height);
  translate([0,0,rad*2]) daisha_base(width, length);
  tires(width, length, rad);
}

module tires(width, length, h_tire){
  color("black")
    //tire
  for(x=[0, 1, width-150], y=[0,1,length-h_tire-75]){
    translate([x+h_tire, y+50, h_tire])rotate([90,0,90])cylinder(r=h_tire, h=20);
  }
}

module daisha_base(width, length){
  color("dimgray")
  hull(){
  for(x=[0,1,width-40], y = [0,1,length-40]){
      translate([x+20, y+20, 0])cylinder(r=20, h=19);
  }
  }
  color("blue")
  hull(){
  for(x=[0,1,width-60], y = [0,1,length-60]){
      translate([x+30, y+30, 1])cylinder(r=20, h=20);
  }
  }
}

module handle(width, height){
  difference(){
    union(){
      hull(){
        translate([width/2-50, height-50, 0])cylinder(r=50, h=20);
        translate([-(width/2)+50, height-50, 0])cylinder(r=50, h=20);
      }
      translate([-width/2,0,0]) cube([width, height-50, 20]);
      }
  union(){
    hull(){
      translate([width/2-70, height-70, -1])cylinder(r=50, h=22);
      translate([-(width/2)+70, height-70, -1])cylinder(r=50, h=22);
    }
    translate([-(width-40)/2,-20,-1]) cube([width-40, height-70, 22]);
  }
  }
  translate([-width/2,height*2/3,0])rotate([90,0,0])cube([width, 2, 150]);
}