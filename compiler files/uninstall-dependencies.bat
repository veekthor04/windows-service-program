call RefreshEnv.cmd
for /f "tokens=5" %%a in ('netstat -aon ^| find ":5000" ^| find "LISTENING"') do taskkill /f /pid %%a
call RefreshEnv.cmd
