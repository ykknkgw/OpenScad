
ww=12;
tw=10;
hh=2;

cw=57;
pcbh=1.6;
mr=7;

difference(){
  translate([cw/2,0,0])
  hull(){
    cylinder(h=pcbh, r=cw/2);
    minkowski(){
    translate([mr,-(cw-mr*2)/2,0]) cube([cw-mr*2,cw-mr*2,pcbh-0.1*2]);
    cylinder(h=0.1, r=mr);
    }
  }

//wheel convex
  translate([(cw+cw/2)/2-tw/2,cw/2-ww,-0.2]) cube([tw, ww, hh]);
  translate([(cw+cw/2)/2-tw/2,-cw/2,-0.2]) cube([tw, ww, hh]);
}

module m_base(){
  color("pink") translate([0,-cw/2,-4])cube([cw+cw/2,cw,2]);
  color("pink") translate([10,-cw/2,-2])cube([2,cw,2]);
  color("pink") translate([-10+cw+cw/2,-cw/2,-2])cube([2,cw,2]);
}