@echo off

for /f "delims=" %%i in (list.txt) do (
    code --install-extension "%%i"
)