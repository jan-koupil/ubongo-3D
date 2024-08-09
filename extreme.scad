// expects parameter N of <1,15>
// example use: "c:\Program Files\OpenSCAD\openscad.com" -o stl\tile_3.stl -D "N=3" cmdline_element.scad

/* config */
height = 4;
halfsize = 9.5;
fontHeight = 0.8;
fontFactor = 1;
play = 0.2;
eps = 0.05;

/* request */
N = 1;
//hex();

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
} else if (N == 8) {
    tile8();
} else if (N == 9) {
    tile9();
} else if (N == 10) {
    tile10();
} else if (N == 11) {
    tile11();
} else if (N == 12) {
    tile12();
} else if (N == 13) {
    tile13();
} else if (N == 14) {
    tile14();
} else if (N == 15) {
    tile15();
}

/* code */
fontSize = halfsize * fontFactor;
yDim = sqrt(3) * halfsize;
yShift = yDim / 3;

module hex(edgeConns = [], vertexConns = []) {
    linear_extrude(height)
        regular_polygon(6, halfsize - play);

    for (edgeConn = edgeConns) {
        edgeConnector(edgeConn);
    }

    for (vertexConn = vertexConns) {
        vertexConnector(vertexConn);
    }
}

module edgeConnector(location) {
    color([255/255, 0/255, 0/255], 0.5) 

    rotate([0, 0, 30 + location * 60])
        translate([yDim / 2, 0, height / 2])    
            cube(size=[3*play, halfsize - play, height], center=true);
}

module vertexConnector(location) {
    color([0/255, 0/255, 255/255], 0.5) 
    
    rotate([0, 0, 60 * location])
        translate([halfsize, 0, height / 2])    
            cube(size=[3*play, 3*play, height], center=true);
}

module number(trans = [0,0,0], rot = 0, num = 0) {
    translate([0,0,-fontHeight + eps]) translate(trans) rotate([0,0,rot]) linear_extrude(fontHeight)
         text(num, font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center"); 

    translate([0,0,-height - eps]) translate(trans) rotate([0,0,rot]) linear_extrude(fontHeight) mirror([1, 0, 0])
        text(num, font = "Liberation Sans:style=Bold", size = fontSize, halign = "center", valign = "center"); 
}


module regular_polygon(order, r){
    angles=[ for (i = [0:order-1]) i*(360/order) ];
    coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
    polygon(coords);
}

module tile1() {
    difference() {
        union() {
            hex(edgeConns = [0]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [5]);
            translate([3 * halfsize, 0, 0]) hex();
        }
        number([1.5 * halfsize, yDim / 2, height], 0, "1");
    }
}

module tile2() {
    difference() {
        union() {
            hex(edgeConns = [0]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [5]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [5]);
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
        }
        number([1.5 * halfsize, yDim / 2, height], 0, "2");
    }
}

module tile3() {
    difference() {
        union() {
            hex(edgeConns = [0, 5]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [4, 5]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [3, 5]);
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
            translate([1.5 * halfsize, -yDim / 2, 0]) hex(vertexConns = [1, 2]);
        }
        number([1.5 * halfsize, 0, height], 120, "3");
    }
}

module tile4() {
    difference() {
        union() {
            hex(edgeConns = [0, 5]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [4, 5]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [3]);
            translate([1.5 * halfsize, -yDim / 2, 0]) hex(vertexConns = [0, 1, 2]);
            translate([3 * halfsize, -yDim, 0]) hex(edgeConns = [1, 2]);
        }
        number([2 * halfsize, -yShift / 2, height], 240, "4");
    }
}

module tile5() {
    difference() {
        union() {
            hex(edgeConns = [0, 5]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex();
            // translate([3 * halfsize, 0, 0]) hex();
            translate([1.5 * halfsize, -yDim / 2, 0]) hex(edgeConns = [1, 5]);
            translate([4.5 * halfsize, -yDim / 2, 0]) hex(edgeConns = [3]);
            translate([3 * halfsize, -yDim, 0]) hex();
        }
        number([halfsize, 0, height], -30, "5");
    }
}

module tile6() {
    difference() {
        union() {
            hex(edgeConns = [1, 5]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [0, 2, 3, 4]);
            translate([0, yDim, 0]) hex();
            translate([1.5 * halfsize, -yDim / 2, 0]) hex();
            translate([3 * halfsize, yDim, 0]) hex();
        }
        number([2 * halfsize / 3, yDim / 3, height], 60, "6.");
    }
}

module tile7() {
    difference() {
        union() {
            hex(edgeConns = [0, 5]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex();
            translate([1.5 * halfsize, -yDim / 2, 0]) hex(edgeConns = [1, 4, 5], vertexConns = [2, 5]);
            translate([3 * halfsize, -yDim, 0]) hex(edgeConns = [3]);
            translate([1.5 * halfsize, -1.5 * yDim, 0]) hex();
        }
        number([halfsize, 0, height], -30, "7");
    }
}

module tile8() {
    difference() {
        union() {
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [4, 5], vertexConns = [5]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [3, 5]);
            translate([1.5 * halfsize, -yDim / 2, 0]) hex();
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
            translate([6 * halfsize, 0, 0]) hex(edgeConns = [3]);
        }
        number([2 * halfsize, 0, height], 240, "8");
    }
}

module tile9() {
    difference() {
        union() {
            hex(edgeConns = [0, 4]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex();
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [2, 5]);
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
            translate([0, -yDim, 0]) hex();
        }
        number([0, 0, height], 180, "9.");
    }
}

module tile10() {
    difference() {
        union() {
            hex();
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [0, 3, 5]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [1, 5], vertexConns = [2]);
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
            translate([3 * halfsize, yDim, 0]) hex();
        }
        number([2.5 * halfsize, 1.33 * yDim / 2, height], 210, "10");
    }
}

module tile11() {
    difference() {
        union() {
            translate([1.5 * halfsize, yDim / 2, 0]) hex();
            translate([3 * halfsize, -2 * yDim, 0]) hex();
            translate([1.5 * halfsize, -yDim / 2, 0]) hex(edgeConns = [1]);
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
            translate([3 * halfsize, -yDim, 0]) hex(edgeConns = [0, 2, 4]);
        }
        number([3 * halfsize, -yDim, height], -30, "11");
    }
}

module tile12() {
    difference() {
        union() {
            translate([1.5 * halfsize, yDim / 2, 0]) hex();
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [2, 3, 4]);
            translate([1.5 * halfsize, -yDim / 2, 0]) hex(edgeConns = [1, 5], vertexConns = [0, 1]);
            translate([3 * halfsize, -yDim, 0]) hex();
        }
        number([2.25 * halfsize, -yShift / 2, height], 270, "12");
    }
}

module tile13() {
    difference() {
        union() {
            hex(edgeConns = [0, 4]);
            translate([1.5 * halfsize, yDim / 2, 0]) hex();
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [2]);
            translate([0, -yDim, 0]) hex();
        }
        number([1.5 * halfsize, yDim / 2, height], 120, "13");
    }
}

module tile14() {
    difference() {
        union() {
            translate([1.5 * halfsize, yDim / 2, 0]) hex(edgeConns = [4]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [2, 3, 5], vertexConns = [3]);
            translate([1.5 * halfsize, -yDim / 2, 0]) hex();
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
        }
        number([2.25 * halfsize, 0, height], 180, "14");
    }
}

module tile15() {
    difference() {
        union() {
            hex(edgeConns = [5]);
            translate([3 * halfsize, 0, 0]) hex(edgeConns = [3, 5]);
            translate([1.5 * halfsize, -yDim / 2, 0]) hex();
            translate([4.5 * halfsize, -yDim / 2, 0]) hex();
        }
        number([4.5 * halfsize, -yDim / 2, height], 120, "15");
    }
}
