@echo off
echo 偵測 Microsoft Office 2016 安裝目錄
set OfficePath="C:\Program Files\Microsoft Office\Office16\"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set OfficePath="C:\Program Files (x86)\Microsoft Office\Office16\"
For /F "tokens=2 delims=[]" %%G in ('ver') Do (set _version=%%G) 
For /F "tokens=2 delims=. " %%G in ('echo %_version%') Do (set _major=%%G) 
if "%_major%"=="5" (echo 重啟 KMS 金鑰管理伺服器
cscript %OfficePath%ospp.vbs /osppsvcrestart)
echo 設定 KMS 金鑰管理伺服器
cscript %OfficePath%ospp.vbs /sethst:192.168.0.1
cscript %OfficePath%ospp.vbs /setprt:1688
echo 啟動 Microsoft Office 2016
cscript %OfficePath%ospp.vbs /act
echo 啟動程序執行完成
echo 請注意: 上方(約前五行)需有 Product activation successful 出現,
echo 才表示您的 Office2016 啟動成功!
pause