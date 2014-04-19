SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\MCME-Sound-DEBUG mkdir %newDir%\MCME-Sound-DEBUG
del %newdir%\MCME-Sound-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\MCME-Sound-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\MCME-Sound-DEBUG\assets\minecraft
