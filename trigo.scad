// expects parameter N of <1,7>
// example use: "c:\Program Files\OpenSCAD\openscad.com" -o stl\tile_3.stl -D "N=3" cmdline_element.scad

/* config */
height = 4;
halfsize = 17 / 2;
fontHeight = 0.8;
fontFactor = 1;
eps = 0.05;

/* request */
N = 5;

if (N == 0) {
    test_tile();
}
if (N == 1) {
    tile1();
} else if (N == 2) {
    tile2();
} else if (N == 3) {
    tile3();
} else if (N == 4) {
    tile4();
} else if (N == 5) {
    tile5();
} else if (N == 6) {
    tile6();
} else if (N == 7) {
    tile7();
}


/* code */
fontSize = halfsize * fontFactor;
yDim = sqrt(3) * halfsize;
yShift = yDim / 3;



module triangle() {
    translate([-halfsize, -yShift, 0])            
    linear_extrude(height)
        polygon(points=[[0,0],[2*halfsize + eps,0],[halfsize + eps / 2, yDim + eps]]);
    
}

module test_tile() { //brown
    triangle();
    text("0", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}

module number(trans = [0,0,0], rot = 0, num = 0) {
    
    translate([0,0,height -fontHeight + eps]) translate(trans) rotate([0,0,rot]) linear_extrude(fontHeight)
         text(num, font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center"); 

    translate([0,0,- eps]) translate(trans) rotate([0,0,rot]) linear_extrude(fontHeight) mirror([1,0,0])
         text(num, font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center"); 
}

module tile1() { //brown
    difference() {
        union() {
            translate([   -halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([halfsize, yDim, 0]) rotate([0, 0,  0]) triangle();
            translate([2 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();
        }

        // translate([halfsize, yShift, height - fontHeight + eps]) rotate([0,0, 90]) linear_extrude(fontHeight)
        //     text("1", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");        
        number([halfsize, yShift, 0], 90, "1");
    }
    
}
module tile2() { //violet
    difference() {
        union() {
            translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
            translate([2 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();
        }
        // translate([2.75 * halfsize, 1.5 *yShift, height - fontHeight + eps]) rotate([0,0, 270]) linear_extrude(fontHeight)
        //     text("2", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
        number([2.75 * halfsize, 1.5 *yShift, 0], 270, "2");
    }
}
module tile3() { //sand
    difference() {
        union() {

            translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
            translate([4 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();
            translate([5 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
        }

        // translate([3 * halfsize, 2 * yShift, height - fontHeight + eps]) rotate([0,0, 315]) linear_extrude(fontHeight)
        //     text("3", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
        number([3 * halfsize, 2 * yShift, 0], 315, "3");
    }
}
module tile4() { //yellow
    difference() {
        union() {

            translate([   -halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
        }

        // translate([ halfsize, yShift / 2, height - fontHeight + eps]) rotate([0,0, 0]) linear_extrude(fontHeight)
        //     text("4", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
        number([ halfsize, yShift / 2, 0], 0, "4");
    }
}
module tile5() { //green
    difference() {
        union() {
            translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
            translate([4 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();
        }

        // translate([2.5 * halfsize - 0.12 * yShift, 0.754 *yShift, height - fontHeight + eps]) rotate([0,0, 210]) linear_extrude(fontHeight)
        //         text("5", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
        number([2.5 * halfsize - 0.12 * yShift, 0.754 *yShift, 0], 210, "5");
    }
}
module tile6() { //green
    difference() {
        union() {
            translate([   -halfsize,     yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([           0,          0, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize,     yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,          0, 0]) rotate([0, 0,  0]) triangle();
            translate([3 * halfsize,     yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize, -2 *yShift, 0]) rotate([0, 0, 60]) triangle();
        }

        // translate([2 * halfsize, 0.5 *yShift, height - fontHeight + eps]) rotate([0,0, 270]) linear_extrude(fontHeight)
        //         text("6", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
        number([2 * halfsize, 0.5 *yShift, 0], 270, "6");
    }
}
module tile7() { //blue
    difference() {
        union() {
            translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
            translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
            translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
            translate([    halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
        }

        // translate([1.5 * halfsize, 0.5 *yShift, height - fontHeight + eps]) rotate([0,0, 270]) linear_extrude(fontHeight)
        //         text("7", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
        number([1.5 * halfsize, 0.5 *yShift, 0], 270, "7");
    }
}