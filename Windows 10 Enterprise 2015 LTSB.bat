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



echo ���{���N����Windows 10 Enterprise 2015 LTSB�������Ұʻ{�Ҫ��]�w

echo �нT�{�z���楻�{���ɬO�_�w�g��ܥH*�t�κ޲z�̨�������*

echo �]�wWindows 10 Pro �Ǹ�

cscript "%SystemRoot%\system32\slmgr.vbs" /ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9

echo �]�w KMS ���_�޲z���A��

cscript "%SystemRoot%\system32\slmgr.vbs" /skms 192.168.0.1:1688

echo �Ұ�Windows 10 Enterprise 2015 LTSB

cscript "%SystemRoot%\system32\slmgr.vbs" /ato

echo ���Microsoft Windows ���v��T

cscript "%SystemRoot%\system32\slmgr.vbs" /dlv

echo �����j�q�ҥε{��

pause