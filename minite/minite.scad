//minite

translate([0,0,0])minite();
//cube([1000,1000,1000]);

module minite(){
    translate([0,0,0])
    scale([1,1,1])
    import_stl("minite2024.stl", convexity=5);
}
