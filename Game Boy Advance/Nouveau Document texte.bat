@echo off
for %%f in (*.png) do (
    set "filename=%%~nf"
    echo overlays = 1 > "%%~nf.cfg"
    echo overlay0_overlay = %%~nf.png >> "%%~nf.cfg"
    echo overlay0_full_screen = true >> "%%~nf.cfg"
    echo overlay0_descs = 0 >> "%%~nf.cfg"
)
echo .cfg files generated for each .png file in the folder.
pause
