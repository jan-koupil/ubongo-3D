@ECHO OFF
SET executable="c:\Program Files\OpenSCAD\openscad.com"
SET scadfile=trigo.scad
SET outputdir=trigo

IF NOT EXIST %outputdir% MKDIR %outputdir%

FOR /L %%N IN (1,1,7) DO (
    echo "Generating tile N=%%N"
        %executable% -o %outputdir%\trigo_tile_%%N.stl -D "N=%%N" %scadfile%
    )
)