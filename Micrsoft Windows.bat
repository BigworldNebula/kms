@echo off

rem ����޲z���v��
:: BatchGotAdmin  
:-------------------------------------  
rem  --> Check for permissions  
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
rem --> If error flag set, we do not have admin.  
if '%errorlevel%' NEQ '0' (  
    echo ����޲z���v����,�p�GUAC�u��,�п�ܤ��\...
    goto UACPrompt  
) else ( goto gotAdmin )   
:UACPrompt  
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"   
    "%temp%\getadmin.vbs"
    exit /B  
:gotAdmin  
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )  
    pushd "%CD%"  
CD /D "%~dp0"


echo ���{���N���� Microsoft Windows ���Ұʻ{�Ҫ��]�w

echo �]�w Microsoft Windows  �Ǹ�

cscript "%SystemRoot%\system32\slmgr.vbs" /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

echo �]�w KMS ���_�޲z���A��

cscript "%SystemRoot%\system32\slmgr.vbs" /skms kms.myftp.org:1688

echo �Ұ� Microsoft Windows

cscript "%SystemRoot%\system32\slmgr.vbs" /ato

echo ���Microsoft Windows ���v��T

cscript "%SystemRoot%\system32\slmgr.vbs" /dlv

echo �����j�q�ҥε{��

pause