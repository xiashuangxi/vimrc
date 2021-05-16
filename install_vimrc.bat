@echo off

if not exist %USERPROFILE%\vimfiles (
    mkdir %USERPROFILE%\vimfiles
)

if not exist %USERPROFILE%\vimfiles\core (
    mkdir %USERPROFILE%\vimfiles\core
)

if not exist %USERPROFILE%\vimfiles\autoload (
    mkdir %USERPROFILE%\vimfiles\autoload
)

copy /y .\autoload\plug.vim %USERPROFILE%\vimfiles\autoload\plug.vim 

for %%i in (./core/*.*) do ( 
    copy /y .\core\%%i %USERPROFILE%\vimfiles\core\%%i 
)

echo source ~/vimfiles/core/plugs.vim > %USERPROFILE%\vimfiles\vimrc
echo source ~/vimfiles/core/basic.vim >> %USERPROFILE%\vimfiles\vimrc
echo source ~/vimfiles/core/map.vim >> %USERPROFILE%\vimfiles\vimrc
