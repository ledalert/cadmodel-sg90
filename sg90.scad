module sg90() {
	color("blue") difference() {
		union() {
			translate([0,0,22.5/2]) cube([22.5,12.2,22.5], center=true);
			translate([0,0,16.75]) cube([32.2,12.2,2], center=true);

			translate([0,0,22.5-1]) {
				hull() {
					translate([-1,0,0]) cylinder(d=5.5, h=4+1);
					translate([1,0,0]) cylinder(d=5.5, h=4+1);
				}

				translate([5.5,0,0]) cylinder(d=11.6, h=4+1);
			}

		}	

		translate([-32.5/2+2,0,16.75-2]) {
			cylinder(d=2, h=2+2);
			translate([-2,0,2]) cube([4,1,2+2], center=true);
		}
		translate([32.5/2-2,0,16.75-2]) {
			cylinder(d=2, h=2+2);
			translate([2,0,2]) cube([4,1,2+2], center=true);
		}
	}
	color("white") translate([5.5,0,22.5-1+4]) {
		difference() {
			cylinder(d=4.8, h=3+1);
			translate([0,0,1]) cylinder(d=2, h=4);
		}
	}
}