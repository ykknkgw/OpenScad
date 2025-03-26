//
//Motor Driver DRV8835
//https://akizukidenshi.com/goodsaffix/AE-DRV8835-S_20210526.pdf
//

motordriver_DRV8835();

module motordriver_DRV8835(){
  translate([0,0,10])cube([10,15,1.6]);
  translate([0,0,8])cube([2, 15, 2]);
  translate([8,0,8])cube([2, 15, 2]);
  for(length=[1.15: 2.54:15]){
   translate([1.19,length,0]) cylinder(h=8,r=0.5);
   translate([1.19+7.62,length,0]) cylinder(h=8,r=0.5);
  }
}