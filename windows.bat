@echo off
mode con cols=90 lines=100 & color fc

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

rem �E������
cls
:start
echo\
echo                                �п�J�Ʀr���(�ХH�޲z���Ҧ��B��):
echo\
echo           ==============================================================================
echo           *                                                                            *
echo           *                        1�G�E��Windows 10 Pro ��                            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        2�G�E��Windows 10 Pro Workstations��                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        3�G�E��Windows 10 Pro Education��                   *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        4�G�E��Windows 10 Education��                       *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        5�G�E��Windows 10 Enterprise��                      *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        6�G�E��Windows 10 Enterprise LTSC 2019 ��           *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        7�G�E��Windows 10 Enterprise LTSB 2016��            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        8�G�E��Windows 10 Enterprise 2015 LTSB��            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        9�G�E��Windows 8.1 Pro��                            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       10: �E��Windows 8 Pro��                              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       11�G�E��Windows 8.1 Enterprise��                     *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       12�G�E��Windows 8 Enterprise��                       *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       13�G�E��Windows 7 Pro��                              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       14�G�E��Windows 7 Enterprise                         *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       0�G�d�� Windows �E�����A                             *
echo           *                                                                            *
echo           ==============================================================================
set /P var=":"
if %var%==1  goto 1
if %var%==2  goto 2
if %var%==3  goto 3
if %var%==4  goto 4
if %var%==5  goto 5
if %var%==6  goto 6
if %var%==7  goto 7
if %var%==8  goto 8
if %var%==9  goto 9
if %var%==10 goto 10
if %var%==11 goto 11
if %var%==12 goto 12
if %var%==13 goto 13
if %var%==14 goto 14
if %var%==0 goto look

:1
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit

:2
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:3
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:4
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:5
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:6
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:7
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:8
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:9
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk GCRJD-8NW9H-F2CDX-CCM8D-9D6T9
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit



:10
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk NG4HW-VH26C-733KW-K6F98-J8CK4
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:11
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk MHF9N-XY6XB-WVXMC-BTDCT-MKKG7
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit



:12
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk 32JNW-9KQ84-P47T8-D8GGY-CWCK7
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:13
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit

:14
cls
echo\
echo           ******************************************************************************
echo           *                                                                            *
echo           *     ���U�ӱN�۰ʿE��,�u���T��,���I���C�@�B�u�����T�w,�E���L�{�ݭn�p��      *
echo           *                                                                            *
echo           ******************************************************************************
echo\
echo                                         �Ĥ@�B �w�˲��~�K�_...
echo\
slmgr -ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit


:look
cls
echo\
echo                                          �Ъ`�N�d�ݼu�����e
slmgr.vbs -dlv
goto exit


:exit
echo\
echo\
echo\
echo\
echo\
echo\
echo           *******************************���O�w�g����***********************************
echo           *                                                                            *
echo           *                                                                            *
echo           *                              �����N��h�X                                  *
echo           *                                                                            *
echo           *                        http://kwokpcaa.lionfree.net/kms.html               *
echo           *                                                                            *
echo           *******************************By:�p�Ѧ�*************************************
pause>nul 
start http://kwokpcaa.lionfree.net/kms.html & exit

















