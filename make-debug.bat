SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\Sound-DEBUG mkdir %newDir%\Sound-DEBUG
del %newdir%\Sound-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\Sound-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\Sound-DEBUG\assets\minecraft
