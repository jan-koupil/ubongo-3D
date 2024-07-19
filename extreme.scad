/* config */
height = 3;
halfsize = 10;
fontHeight = 1;
fontFactor = 1;

/* request */

// tile1();
// tile2();
// tile3();
// tile4();
// tile5();
// tile6();
// tile7();
// tile8();
// tile9();
// tile10();
// tile11();
// tile12();
// tile13();
// tile14();
tile15();


/* code */
fontSize = halfsize * fontFactor;
yDim = sqrt(3) * halfsize;
yShift = yDim / 3;

module hex() {
    linear_extrude(height)
        regular_polygon(6, halfsize);
}

module regular_polygon(order, r){
    angles=[ for (i = [0:order-1]) i*(360/order) ];
    coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
    polygon(coords);
}

module tile1() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();

    translate([1.5 * halfsize, yDim / 2, height]) rotate([0,0, 0]) linear_extrude(fontHeight)
            text("1", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile2() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();

    translate([1.5 * halfsize, yDim / 2, height]) rotate([0,0, 0]) linear_extrude(fontHeight)
            text("2", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile3() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();

    translate([1.5 * halfsize, 0, height]) rotate([0,0,120]) linear_extrude(fontHeight)
            text("3", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
} 
module tile4() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, -yDim, 0]) hex();

    translate([2 * halfsize, -yShift / 2, height]) rotate([0,0,240]) linear_extrude(fontHeight)
            text("4", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
} 
module tile5() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    // translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, -yDim, 0]) hex();

    translate([ halfsize, 0, height]) rotate([0,0,-30]) linear_extrude(fontHeight)
            text("5", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile6() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([0, yDim, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, yDim, 0]) hex();

    translate([2 * halfsize / 3, yDim / 3, height]) rotate([0,0,60]) linear_extrude(fontHeight)
            text("6.", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile7() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, -yDim, 0]) hex();
    translate([1.5 * halfsize, -1.5 * yDim, 0]) hex();

    translate([ halfsize, 0, height]) rotate([0,0,-30]) linear_extrude(fontHeight)
            text("7", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile8() {
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();
    translate([6 * halfsize, 0, 0]) hex();

    translate([2 * halfsize, 0, height]) rotate([0,0,240]) linear_extrude(fontHeight)
            text("8", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
} 
module tile9() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();
    translate([0, -yDim, 0]) hex();

    translate([0, 0, height]) rotate([0,0,180]) linear_extrude(fontHeight)
            text("9.", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile10() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, yDim, 0]) hex();

    translate([2.5 * halfsize, 1.33 * yDim / 2, height]) rotate([0,0,210]) linear_extrude(fontHeight)
            text("10", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile11() {
    //hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, -2 * yDim, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, -yDim, 0]) hex();

    translate([3 * halfsize, - yDim, height]) rotate([0,0,-30]) linear_extrude(fontHeight)
            text("11", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile12() {
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([3 * halfsize, -yDim, 0]) hex();

    translate([2.25 * halfsize, -yShift / 2, height]) rotate([0,0,270]) linear_extrude(fontHeight)
            text("12", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
} 
module tile13() {
    hex();
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([0, -yDim, 0]) hex();

    translate([1.5 * halfsize, yDim / 2, height]) rotate([0,0,120]) linear_extrude(fontHeight)
            text("13", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
module tile14() {
    translate([1.5 * halfsize, yDim / 2, 0]) hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();

    translate([2.25 * halfsize, 0, height]) rotate([0,0,180]) linear_extrude(fontHeight)
            text("14", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
} 
module tile15() {
    hex();
    translate([3 * halfsize, 0, 0]) hex();
    translate([1.5 * halfsize, -yDim / 2, 0]) hex();
    translate([4.5 * halfsize, -yDim / 2, 0]) hex();

    translate([4.5 * halfsize, -yDim / 2, height]) rotate([0,0,120]) linear_extrude(fontHeight)
            text("15", font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center");    
}
