/**
** wheel base
**/
//base();
//hook1();

module hook1(height){
  translate([0, 0, 0]) cube([250, 150, 10]);
  translate([0, 0, 0]) cube([10, 150,height]);
  translate([0, 0, height]) cube([50, 150, 10]);

}

module base(length){
  translate([-100,0,-10]) cube([length+2, 160, 20]);
  translate([-300, 0, 0]) hook1(75);
  mirror([-250,0,0]){
    translate([-300, 0, 0]) hook1(75);
  }
}