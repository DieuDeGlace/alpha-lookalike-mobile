@echo off
setlocal
cd /d "%~dp0"
if not exist build-mobile mkdir build-mobile
clang-cl /nologo /O2 /MD /std:c++17 /LD /Ivendor\cwmods AlphaLookalike.cpp /Fobuild-mobile\alpha-lookalike.obj /link d3d11.lib dxgi.lib d3dcompiler.lib user32.lib winmm.lib /OUT:build-mobile\alpha-lookalike.dll
if errorlevel 1 exit /b 1
clang-cl /nologo /O2 /MD /std:c++17 /UNDEBUG /Ivendor\cwmods Tests\PaletteTest.cpp /Fobuild-mobile\PaletteTest.obj /Febuild-mobile\PaletteTest.exe /link d3d11.lib dxgi.lib d3dcompiler.lib user32.lib winmm.lib
if errorlevel 1 exit /b 1
build-mobile\PaletteTest.exe
