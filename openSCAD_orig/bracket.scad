module sidebracket(){
    //厚み
    linear_extrude(height = 2)
    hull() {
      polygon([[0,0],[45,20],[90,0]]);
      translate([45,35,0]) circle(d=15);
    }
}

module tirebracket(){
    translate([0,2,0])sidebracket();
    translate([0,0,0])cube([90, 2, 45] );
    translate([0,2,45])sidebracket();
}

//tirebracket();

module tireunit(){
    rotate([-90,0,0]){
    tredwidth = 38;
    tirebracket();
    translate([45, 35, (45-tredwidth)/2])
    cylinder(h=tredwidth, r=30);
}}

tireunit();