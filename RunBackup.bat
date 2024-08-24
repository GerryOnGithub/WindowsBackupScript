rem Modify this script as you like, then run in powershell
rem Below copy Documents to the Q drive (which is a thumbnail drive in this case)

@echo off
setlocal EnableDelayedExpansion

for /f %%I in ('powershell -command "Get-Date -Format yyyy-MM-dd"') do set datestamp=%%I

rem add as many lines like the following as you need
rem /XD is used to exclude folders
rem below 'Asus' identifies (to me) which computer the backup came from

robocopy "C:\Users\Gerry\Documents" "Q:\Backups\Asus_%datestamp%" /E /R:0 /W:0 /MT /XO /XD "C:\Users\Gerry\Documents\My Videos" "C:\Users\Gerry\Documents\My Pictures" "C:\Users\Gerry\Documents\My Music"

endlocal
