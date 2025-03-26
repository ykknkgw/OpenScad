$fs=0.11;
translate ([0, 0, 10*sin($t*360)])
sphere(2);

rotate ([0, 0, $t*360])

square(5);

//https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#$fn