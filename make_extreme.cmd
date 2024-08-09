@ECHO OFF
SET executable="c:\Program Files\OpenSCAD\openscad.com"
SET scadfile=extreme.scad
SET outputdir=extreme

IF NOT EXIST %outputdir% MKDIR %outputdir%

FOR /L %%N IN (1,1,15) DO (
    echo "Generating tile N=%%N"
        %executable% -o %outputdir%\extreme_tile_%%N.stl -D "N=%%N" %scadfile%
    )
)