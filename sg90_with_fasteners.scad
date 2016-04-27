$fs = 0.01;

use <sg90.scad>;
use <fastener_1.scad>;
use <fastener_2.scad>;
use <fastener_3.scad>;

translate([50,0,0]) sg90();


sg90();
translate([5.5,0,28.5]) rotate(30, [0,0,1]) sg90_f3();

translate([40,30,0]) rotate(45, [0,0,1]) sg90_f1();
translate([20,30,0]) rotate(45, [0,0,1]) sg90_f2();
translate([0,30,0]) rotate(45, [0,0,1]) sg90_f3();
