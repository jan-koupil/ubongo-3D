/* config */
height = 3;
halfsize = 10;
fontHeight = 1;
fontFactor = 1;

/* request */

tile1();
// tile2();
// tile3();
// tile4();
// tile5();
// tile6();
// tile7();


/* code */
fontSize = halfsize * fontFactor;
yDim = sqrt(3) * halfsize;
yShift = yDim / 3;



module triangle() {
    translate([-halfsize, -yShift, 0])            
    linear_extrude(height)
        polygon(points=[[0,0],[2*halfsize,0],[halfsize, yDim]]);
    
}

module tile1() { //brown
    translate([   -halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([halfsize, yDim, 0]) rotate([0, 0,  0]) triangle();
    translate([2 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();
    
    translate([halfsize, yShift, height]) rotate([0,0, 90]) linear_extrude(fontHeight)
            text("1", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}
module tile2() { //violet
    translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
    translate([2 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();

    translate([2.75 * halfsize, 1.5 *yShift, height]) rotate([0,0, 270]) linear_extrude(fontHeight)
            text("2", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}
module tile3() { //sand
    translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
    translate([4 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();
    translate([5 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();

    translate([3 * halfsize, 2 * yShift, height]) rotate([0,0, 315]) linear_extrude(fontHeight)
            text("3", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}
module tile4() { //yellow
    translate([   -halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();

    translate([ halfsize, yShift / 2, height]) rotate([0,0, 0]) linear_extrude(fontHeight)
            text("4", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}
module tile5() { //green
    translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
    translate([4 * halfsize, yShift + yDim, 0]) rotate([0, 0, 60]) triangle();

    translate([2.5 * halfsize, 0.604 *yShift, height]) rotate([0,0, 210]) linear_extrude(fontHeight)
            text("5", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}
module tile6() { //green
    translate([   -halfsize,     yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([           0,          0, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize,     yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,          0, 0]) rotate([0, 0,  0]) triangle();
    translate([3 * halfsize,     yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize, -2 *yShift, 0]) rotate([0, 0, 60]) triangle();

    translate([2 * halfsize, 0.5 *yShift, height]) rotate([0,0, 270]) linear_extrude(fontHeight)
            text("6", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}
module tile7() { //blue
    translate([           0,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([2 * halfsize,      0, 0]) rotate([0, 0,  0]) triangle();
    translate([3 * halfsize, yShift, 0]) rotate([0, 0, 60]) triangle();
    translate([3 * halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();
    translate([    halfsize,   yDim, 0]) rotate([0, 0,  0]) triangle();

    translate([1.5 * halfsize, 0.5 *yShift, height]) rotate([0,0, 270]) linear_extrude(fontHeight)
            text("7", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");
}