module sg90_f3() {
	color("white") difference() {

		union() {
			linear_extrude(height=1.4)
				difference() {

					union() {

						hull() {
							circle(d=6);
							translate([14,0]) circle(d=4);
						}

						hull() {
							translate([0,-6]) circle(d=3.8);
							translate([0,6]) circle(d=3.8);
						}


						hull() {
							circle(d=7);
							translate([-17,0]) circle(d=4);
						}
					}

					for (i=[0:5]) translate([4+i*2,0]) circle(d=1);					
					for (i=[0:6]) translate([-5-i*2,0]) circle(d=1);

					for (i=[0:1]) {
						translate([0,4+i*2]) circle(d=1);
						translate([0,-4-i*2]) circle(d=1);
					}

				}

			cylinder(d=6.7, h=3.8);
		}


		//Extend 1mm in each open direction to prevent surfaces from being inside of each other
		translate([0,0,-1]) cylinder(d=2.5, h=3.8+2);
		translate([0,0,-1]) cylinder(d=4.7, h=1+1);	
		translate([0,0,3.8-2+1]) cylinder(d=4.7, h=2+1);	

	}
}