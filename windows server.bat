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
echo           *                        1�G�E��Windows Server 2019 Standard                 *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        2�G�E��Windows Server 2019 Datacenter               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        3�G�E��Windows Server 2019 Essentials               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        4�G�E��Windows Server 2016 Standard                 *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        5�G�E��Windows Server 2016 Datacenter               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        6�G�E��Windows Server 2016 Essentials               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        7�G�E��Windows Server 2012 R2 Server Standard��     *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        8�G�E��Windows Server 2012 R2 Datacenter            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                        9�G�E��Windows Server 2012 R2 Essentials            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       10: �E��Windows Server 2012                          *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       11�G�E��Windows Server 2012 Datacenter               *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       12�G�E��Windows Server 2008 R2 Standard              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       13�G�E��Windows Server 2008 R2 Enterprise            *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       14�G�E��Windows Server 2008 R2 Datacenter            *
echo           *                                                                            *
echo           ==============================================================================
echo           *                                                                            *
echo           *                       15�G�E��Windows Server 2008  Standard                *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       16�G�E��Windows Server 2008  Enterprise              *
echo           *                                                                            *
echo           ==============================================================================
echo           ==============================================================================
echo           *                                                                            *
echo           *                       17�G�E��Windows Server 2008 Datacenter               *
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
if %var%==15 goto 15
if %var%==16 goto 16
if %var%==17 goto 17
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
slmgr -ipk N69G4-B89J2-4G8F4-WWYCC-J464C
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
slmgr -ipk WMDGN-G9PQG-XVVXX-R3X43-63DFG
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
slmgr -ipk WVDHN-86M7X-466P6-VHXV7-YY726
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
slmgr -ipk WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY
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
slmgr -ipk CB7KF-BWN84-R7R2Y-793K2-8XDDG
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
slmgr -ipk JCKRF-N37P4-C2D82-9YXRT-4M63B
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
slmgr -ipk D2N9P-3P6X9-2R39C-7RTCD-MDVJX
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
slmgr -ipk W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9
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
slmgr -ipk KNC87-3J2TX-XB4WP-VCPJV-M4FWM
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
slmgr -ipk BN3D2-R7TKB-3YPBD-8DRP2-27GG4
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
slmgr -ipk 48HP8-DN98B-MYWDG-T2DCC-8W83P
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
slmgr -ipk YC6KT-GKW9T-YTKYR-T4X34-R7VHC
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
slmgr -ipk 489J6-VHDMP-X63PK-3K798-CPX3Y
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
slmgr -ipk 74YFP-3QFB3-KQT8W-PMXWJ-7M648
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit



:15
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
slmgr -ipk TM24T-X9RMF-VWXK6-X8JC9-BFGM2
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit



:16
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
slmgr -ipk YQGMW-MPWTJ-34KDK-48M3W-X4Q6V
echo\
echo                                     �ĤG�B �]�w�{�Ҧ��A��...
echo\
slmgr -skms 192.168.0.1
echo\
echo                                         �ĤT�B �۰��p���E��...
echo\
slmgr -ato
goto exit



:17
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
slmgr -ipk 7M67G-PC374-GR742-YH8V4-TCBY3
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































































































































