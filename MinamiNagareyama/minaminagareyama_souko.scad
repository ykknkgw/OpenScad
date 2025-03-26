//
//
//


//toilet size
tx = 1235;
ty = 1690;
//souko size
sx = 9465;
sy = 12885;
//jimsho size
jx = 13340;
jy = 2140+13650+6640; 
jz = 3000;
//diff
dy = jy-sy;
//
//
//

translate([jx+sx-200, sy+2000, 100])color("blue") cube([100, 600, 1000]);
translate([sx-200, sy+2000, 1000])color("blue") cube([100, 600, 1000]);
translate([sx-200, sy+2000+650, 1200])color("blue") cube([100, 600, 1200]);
translate([sx-200, sy+2000+650*2, 1200])color("blue") cube([100, 600, 1200]);
translate([9465, 0,0]) big_building(jx, jy, jz);
translate([0,2140+13650+6640-12885,0])souko(sx, sy, 3000);

translate ([sx-30, dy+3500, 0]) both_door();
translate ([sx+jx-1500, -10, 0]) rotate([0,0, 90]) both_door();
translate ([sx-1500, dy-10, 0]) rotate([0,0, 90]) both_door();

translate([sx, 150, 200])rotate([0,0,90]) toilet_space();
translate([sx-1680, sy-1263*2-800, 0])color("brown")cube([1680, 1263*2+900,200]);
translate([sx, jy-6640, 0])color("black")cube([jx, 6640, 50]);
//間仕切
translate([sx, 4000,0]) color("whithe")cube([jx, 50, jz-1000]);
translate([sx+700, dy+1800, 200]) rotate([0,0,180])sink_area();
// translate([sx+100, dy-3000,0]) mini_kichen();
translate([sx-900,dy+1260*2+50, 200]) color("silver")pan();

module pan(){
  //pan
  translate([0,0,0])
  difference(){
    translate([0,0,0]) cube([900, 900, 100]);
    translate([5,5,20]) cube([890, 890, 100]);
  }
}

module big_building(x, y, h){
  cube([x, y, 10]);
  cube([50, y, h]);
  translate([x, 0, 0])cube([50, y, h]);
  translate([0, 0, 0])cube([x, 50, h/3]);
  translate([0, 0, h*2/3])cube([x, 50, h/3]);
  translate([0, y, 0])cube([x, 50, h]);
}

module souko(x, y, h){
  cube([x, y, 10]);
  translate([0, 0, 0])cube([50, y, h]);
  translate([0, 0, 0])cube([x, 50, h]);
  translate([0, y, 0])cube([x, 50, h]);
}

module toilet(){
  color("white") cube([1235, 1690, 2100]);
}

module both_door(){
  color("silver"){
    cube([100, 900, 2000]);
    translate([0, 900, 0])cube([100,900,2000]);
  }
}

module both_half_door(){
  color("silver"){
    cube([100, 900, 2000]);
    translate([0, 900, 0])cube([100,450,2000]);
  }
}

module toilet_space(){
  translate([sx, 0,0]) toilet();
  translate([sx+tx, 0,0]) toilet();
  //translate([sx+tx*2, 0,0]) toilet();
}

module sink_area(){
  color("silver"){
  //sink 
  //translate([0,900,0])
  union(){
  translate([0,0,450])
  difference(){
    translate([0,0,0]) cube([600, 900, 450]);
    translate([5,5,50]) cube([590, 890, 450]);
  }
  for(i=[0:850:900]){
    translate([0, i, 0]) cube([50,50,450]);
    translate([550, i, 0]) cube([50,50,450]);
  }
  }
  //table
  translate([0,-900,0])
  union(){
  translate([0,0,900-70]) cube([600, 900, 70]);
  translate([0,0,450-70]) cube([600, 900, 70]);
  for(i=[0:850:900]){
    translate([0, i, 450]) cube([50,50,450]);
    translate([550, i, 450]) cube([50,50,450]);
    translate([0, i, 0]) cube([50,50,450]);
    translate([550, i, 0]) cube([50,50,450]);
  }
}
/*
  //pan
  translate([0,900,0])
  difference(){
    translate([0,0,0]) cube([600, 900, 100]);
    translate([5,5,20]) cube([590, 890, 100]);
  }
  */
  }
  //fridge
  color("white") translate([0, -900-600, 0]) cube([600,600, 1800]);
}

module mini_kichen(){
  color("silver"){
    difference(){
      cube([500, 1500, 1800]);
      translate([50, -50, 800]) cube([500, 1600, 800]);
      translate([100, 50, 500]) cube([350, 700, 350]);
    }
  }
}

module locker_toilet(){
  cube([1850, 3650, 2625]);
}