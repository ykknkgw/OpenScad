//Spurgearモジュール
//モジュール0.5 歯数44 POM 厚み2mm 内径8mm
//
include <C:\Program Files\OpenSCAD\libraries\MCAD\involute_gears.scad>

spurgear_for_1717();
//translate([0,0,-2])color("red")cylinder(h=1, r=4);

module spurgear_for_1717(){
$fn=100;

color("white")
gear(number_of_teeth=44, circular_pitch=88,  hub_diameter=0, rim_thickness=2, gear_thickness=2, bore_diameter=8); 
//gear(number_of_teeth=44, circular_pitch=88,  hub_diameter=0, rim_thickness=2, gear_thickness=2, bore_diameter=8); 

//translate([0,0,-1])cylinder(h=2, r=23/2);
    }

/*
歯先円の直径は(歯数＋2)＊モジュール=(44+2)*0.5=23
*/

/*

// General Variablesk
number_of_teeth=44; //歯の数
pressure_angle=1;   // 歯の形状を制御
circular_pitch=0.5; //歯のサイズ（ギアのサイズ）
diametral_pitch=5;  //歯のサイズ(ギアのサイズ)
clearance=0.1;//: かみ合う歯車の歯と歯の間の根元と歯点の間の隙間。
gear_thickness=2;//: 歯車のプレートの厚さ。
rim_thickness=2;//：リム（歯を含む）のギアの厚さ。
rim_width=4;//：歯の根元からリムの内側までの半径方向の距離。
hub_thickness=1;//ボアの周りの部分の厚さ。
hub_diameter=1;//
bore_diameter=1.5;//: 真ん中の穴の大きさ
circles=0;//: ギアプレートに開ける円形の穴の数。
backlash=0.01;//：ギヤがギヤと正しい間隔にあるとき、このギヤの歯の後ろ側と噛み合うギヤの歯の前側の間のスペース。
twist=0;//ヘリカルギアを作るためのもの。
involute_facets=5;//：インボリュート歯形の一辺のファセット数。 省略すると$fnの1/4になります。 もし$fnが設定されていなければ、5となる。
*/