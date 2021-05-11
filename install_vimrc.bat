@echo off

if not exist %USERPROFILE%\vimfiles (
    mkdir %USERPROFILE%\vimfiles
)

if not exist %USERPROFILE%\vimfiles\core (
    mkdir %USERPROFILE%\vimfiles\core
)

for %%i in (./core/*.*) do ( 
    copy /y .\core\%%i %USERPROFILE%\vimfiles\core\%%i 
)

echo source ~/vimfiles/core/basic.vim > %USERPROFILE%\vimfiles\vimrc