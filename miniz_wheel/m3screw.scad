//M3 screw
//https://www.nittoseiko.co.jp/nitto-blog/2017/08/25/6

module screw(sd, length, hd, k){
  $fs=0.01;
  //sd=screw diameter
  //length=screw length
  //hd=head diameter
  //k=head height
  screwhead(hd, k);
  translate([0,0,-length])
  cylinder(h=length, d=sd);
}
screw(3,4,5.5,2);

module screwhead(diameter, k){
  $fs=0.01;
  difference(){
    minkowski(){
      translate([0,0,0])sphere(r=k/2);
      cylinder(h=k/2, r=(diameter/2)-(k/2));
    }
      translate([0,0,-(k+1)/2]) cube([diameter*1.5,diameter*1.5,k+1], center=true);
      translate([0,0,k])cube([1,diameter-1,k-1], center=true);
      translate([0,0,k])
      rotate([90,90,0])
      cube([1,diameter-1,k-1], center=true);
  }
}