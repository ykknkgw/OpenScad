/**
Booth parts
*/

use <./../Foodly/foodly.scad>
use <./../minite/minite.scad>
use <./../conveyer/conveyer.scad>

module octapanel(width, height){
  pole_r = 20;
  poll_height= height;
  p_depth=5; // panel thickness
  p_width=width; // panel width 
  p_height= height-40; //panel height
  b_height = 50; //beam height
  b_length = width-40; // beam length
  b_depth= 16;   //beam depth

  // poles
  color("silver")translate([1010,20,0])  cylinder(r=pole_r, h=pole_height);
  // beams
  color("silver")translate([40, 20-8, 15]) cube([b_length, b_depth, b_height]);
  color("silver")translate([40, 20-8, poll_height-b_height])cube([b_length, b_depth, b_height]);
  //panel
  color("white") translate([30, 20-2.5, 15])cube([p_width, p_depth, p_height]);
}


color("silver")translate([20,20,0])  cylinder(r=20, h=2680);
//奥のパネル
for(x=[0:990:990*5]){
  translate([x,0,0]) octapanel(990, 2680);
}
//中のパネル
for(x=[0:990:990*5]){
  translate([x,1980,0]) octapanel(990, 2680);
}
//右のパネル
for(y=[0:990:990*4]){
  translate([20,y,0]) rotate([0,0,90])octapanel(990, 2680);
}
//左のパネル
for(y=[0:990:990*4]){
  translate([5940,y,0]) rotate([0,0,90])octapanel(990, 2680);
}

//Foodly 手前のパネル
for(x=[0:990:990*1]){
  translate([x,4950,0]) octapanel(990, 900);
}
//Foodly左のパネル
for(y=[0:700:700*2]){
  translate([990*2,1980+870+y,0]) rotate([0,0,90])octapanel(700, 900);
}


translate([990*1, 990*4, 0]) rotate([0,0,90])foodly();
translate([990*5-500, 990*4, 0]) rotate([0,0,90])minite();

translate([990*5-100-500,990*3, 0])conveyer(550, 1000, 900);
translate([990*5+400,990*3, 0])color("silver")cube([600, 500, 900]);