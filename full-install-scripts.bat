@echo off
echo Run all vagrant scripts. Press Enter to continue...
pause
powershell.exe -ExecutionPolicy Bypass -Command "vagrant-scripts\install-dot-net.ps1"
call "vagrant-scripts\install-dot-net-45.cmd"
::call "vagrant-scripts\install-msbuild-tools-2013.cmd"
call "vagrant-scripts\install-sql-server.cmd"
powershell.exe -ExecutionPolicy Bypass -Command "vagrant-scripts\configure-sql-server.ps1"
call "vagrant-scripts\create-database.cmd"
call "vagrant-scripts\install-iis.cmd"
powershell.exe -ExecutionPolicy Bypass -Command "vagrant-scripts\copy-website.ps1"
::call "vagrant-scripts\build-website.cmd"
call "vagrant-scripts\creating-website-in-iis.cmd"
powershell.exe -ExecutionPolicy Bypass -Command "vagrant-scripts\setup-permissions-for-website-folder.ps1"
pause