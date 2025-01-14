@ECHO off
cls
title Windows Activation Tool - HACKINTER
cd "C:\Windows\System32"

:start
ECHO ***************************************
ECHO     WARNING: USE AT YOUR OWN RISK
ECHO     I AM NOT RESPONSIBLE FOR ANY DAMAGES
ECHO ***************************************
ECHO.
set /p c=Would you like to continue [Y/N]? 
if /I "%c%" NEQ "Y" exit

:menu
cls
ECHO ***************************************
ECHO           WINDOWS ACTIVATION TOOL
ECHO ***************************************
ECHO.
ECHO 1. Home
ECHO 2. Home (Country Specific) 
ECHO 3. Home (Single Language)  
ECHO 4. Home N  
ECHO 5. Professional
ECHO 6. Professional N 
ECHO 7. Enterprise
ECHO 8. Enterprise N 
ECHO 9. Education
ECHO 10. Education N 
ECHO 11. Enterprise 2015 LTSB  
ECHO 12. Enterprise 2015 LTSB N 
ECHO 13. Enterprise 2016 LTSB 
ECHO 14. Enterprise 2016 LTSB N  
ECHO 15. Exit
ECHO.

set choice=
set /p choice=Select your operating system to continue (1-15): 

:: Validate input
if "%choice%" LSS "1" if "%choice%" GTR "15" (
    ECHO Invalid choice. Please try again.
    pause
    goto menu
)

:: Set product keys
set "productKey="
if %choice%==1 set productKey=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
if %choice%==2 set productKey=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
if %choice%==3 set productKey=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
if %choice%==4 set productKey=3KHY7-WNT83-DGQKR-F7HPR-844BM
if %choice%==5 set productKey=W269N-WFGWX-YVC9B-4J6C9-T83GX
if %choice%==6 set productKey=MH37W-N47XK-V7XM9-C7227-GCQG9
if %choice%==7 set productKey=NPPR9-FWDCX-D2C8J-H872K-2YT43
if %choice%==8 set productKey=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
if %choice%==9 set productKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
if %choice%==10 set productKey=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
if %choice%==11 set productKey=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
if %choice%==12 set productKey=2F77B-TNFGY-69QQF-B8YKP-D69TJ
if %choice%==13 set productKey=DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
if %choice%==14 set productKey=QFFDN-GRT3P-VKWWX-X7T3R-8B639
if %choice%==15 goto end

:: Check if a valid product key is set
if "%productKey%"=="" (
    ECHO Invalid selection! Please try again.
    pause
    goto menu
)

:: Activate Windows
cls
ECHO Activating Windows for the selected version...
cscript slmgr.vbs /ipk %productKey% >nul
cscript slmgr.vbs /skms kms8.msguides.com >nul
cscript slmgr.vbs /ato | find /i "successfully" >nul && (
    ECHO ***************************************
    ECHO Activation Successful!
    ECHO ***************************************
    pause
    goto end
) || (
    ECHO Activation Failed! Please check your internet connection or product key.
    pause
    goto menu
)

:end
cls
ECHO ***************************************
ECHO       THANK YOU FOR USING HACKINTER
ECHO ***************************************
ECHO.
set /P c=Would you like to quit [Y/N]? 
if /I "%c%" EQU "N" goto start
exit
