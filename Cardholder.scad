module back() { difference() {
cube([124,10,16], center=true);
translate([-2,-8,0]) rotate([75,0,0]) cube([130,20,10], center=true);
translate([-2,8,0]) rotate([-75,0,0]) cube([130,20,10], center=true);
}
}

module front() { difference() {
cube([124,6,7], center=true);
translate([-2,-7,0]) rotate([75,0,0]) cube([130,20,10], center=true);
translate([-2,7,0]) rotate([-75,0,0]) cube([130,20,10], center=true);
}
}

module latch() { union() {
translate([1.5,0,1])cube([3,6.5,4], center=true);
translate([-1,0,-0.5])cube([8,6.5,1], center=true);
}
}

module latchhook() { union() { //Subtract me
translate([1.6,0,1.1])cube([5.5,7,4.2], center=true);
translate([-1.8,0,-0.6])cube([12.2,7,1.2], center=true);
}
}


module body() {
union() {
difference() {
union() {
translate([0,-3.5,8]) back();
translate([0,5.5,3.5]) front();
translate([0,0,-0.5]) cube([124,18,1], center=true);
}
translate([-59.5,-3.5,0.15]) latchhook();
}
translate([64.5,-3.5,0]) latch();
}
}

body();