@echo off

echo 本程式將執行Windows 10 版本的啟動認證的設定

echo 請確認您執行本程式時是否已經選擇以*系統管理者身分執行*

echo 設定Windows 10 Pro Workstations (GVLKs) 序號

cscript "%SystemRoot%\system32\slmgr.vbs" /ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J

echo 設定 KMS 金鑰管理伺服器

cscript "%SystemRoot%\system32\slmgr.vbs" /skms 192.168.0.1:1688

echo 啟動 Windows 10 Pro Workstations

cscript "%SystemRoot%\system32\slmgr.vbs" /ato

echo 顯示Microsoft Windows 授權資訊

cscript "%SystemRoot%\system32\slmgr.vbs" /dlv

echo 完成大量啟用程序

pause