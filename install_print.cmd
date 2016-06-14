@echo off
echo Installing nxlog
msiexec /passive /i "\\yourserver\yourshare\nxlog\nxlog.msi"
echo copying configuration
move "C:\Program Files (x86)\nxlog\conf\nxlog.conf" "C:\Program Files (x86)\nxlog\conf\nxlog.conf.default"
copy "\\yourserver\yourshare\nxlog\nxlog.print" "C:\Program Files (x86)\nxlog\conf\nxlog.conf"
echo Starting nxlog Service
net start nxlog
echo Complete!
exit