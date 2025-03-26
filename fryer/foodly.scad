
translate([0,0,0])foodly();
//cube([10,10,10]);

module foodly(){
    translate([0,0,900])
    scale([1000,1000,1000])
    import_stl("foodly_TypeR_Visual.stl", convexity=5);
}
