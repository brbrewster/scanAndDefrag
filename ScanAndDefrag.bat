echo Y | chkdsk c: /f /x

reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v AutoDefrag /t REG_SZ /d "defrag %homedrive% -f -v" 

reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v PostDefragShutDown /t REG_SZ /d "shutdown -s"

shutdown -r

