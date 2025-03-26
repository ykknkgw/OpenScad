//Spurgearモジュール
// M0.5 14teeth OD 8mm 真鍮 内径1.5　厚み2㎜
//$fa、$fs、$fn は、円弧を生成する際の辺・面の分割数を決定
//$fa は、辺を見込む最小角度 [度]  default=12
//$fs は辺の長さの最小値 [mm] 
//$fn は通常0である。0より大きい場合は、$fa、$fsは無視され、 分割数は $fn となる。デフォルトは0
//$fa と $fs が分割数として決定される場合は、5角形以下にはならない。
//
$fn = 100;

include <C:\Program Files\OpenSCAD\libraries\MCAD\involute_gears.scad>

gear(number_of_teeth=14, circular_pitch=500, hub_diameter=0, rim_width=4);

// General Variables
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

//use <involute_gears.scad>
use <gears.scad>

//gear();
gear(number_of_teeth,
		circular_pitch=false, diametral_pitch=false,
		pressure_angle=20, clearance = 0);