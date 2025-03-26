use <mouse.scad>

COW=37;
TW=11;
WB=22;
Rm=34;

projection(){
  difference(){
    mouse_base();
    translate([Rm-12, (COW-(11+3.5)), -1]) wheel_space(TW+1, WB, 1.6);
    translate([-Rm-1, (COW-(11+3.5)), -1]) wheel_space(TW+1, WB, 1.6);
  }
}