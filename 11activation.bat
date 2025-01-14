@ECHO OFF
CLS
CD "C:\Windows\System32"

:start
ECHO ================================================
ECHO WARNING: USE AT YOUR OWN RISK
ECHO I AM NOT RESPONSIBLE FOR ANY DAMAGES
ECHO ================================================
SET /P c=Would you like to continue? [Y/N]: 
CLS
IF /I "%c%" NEQ "Y" EXIT

:menu
ECHO ================================================
ECHO Select Your Operating System:
ECHO ================================================
ECHO  1. Home
ECHO  2. Home N
ECHO  3. Home Single Language
ECHO  4. Home Country Specific
ECHO  5. Pro
ECHO  6. Pro N
ECHO  7. Pro for Workstations
ECHO  8. Pro for Workstations N
ECHO  9. Pro Education
ECHO 10. Pro Education N
ECHO 11. Education
ECHO 12. Education N
ECHO 13. Enterprise
ECHO 14. Enterprise N
ECHO 15. Enterprise G
ECHO 16. Enterprise G N
ECHO 17. Enterprise LTSC 2019
ECHO 18. Enterprise N LTSC 2019
ECHO 19. Exit
ECHO ================================================

SET /P choice=Enter your choice [1-19]: 
SET "productKey="

REM Assign Product Key based on User Choice
IF "%choice%"=="1"  SET productKey=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
IF "%choice%"=="2"  SET productKey=3KHY7-WNT83-DGQKR-F7HPR-844BM
IF "%choice%"=="3"  SET productKey=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
IF "%choice%"=="4"  SET productKey=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
IF "%choice%"=="5"  SET productKey=W269N-WFGWX-YVC9B-4J6C9-T83GX
IF "%choice%"=="6"  SET productKey=MH37W-N47XK-V7XM9-C7227-GCQG9
IF "%choice%"=="7"  SET productKey=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
IF "%choice%"=="8"  SET productKey=9FNHH-K3HBT-3W4TD-6383H-6XYWF
IF "%choice%"=="9"  SET productKey=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
IF "%choice%"=="10" SET productKey=YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
IF "%choice%"=="11" SET productKey=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
IF "%choice%"=="12" SET productKey=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
IF "%choice%"=="13" SET productKey=NPPR9-FWDCX-D2C8J-H872K-2YT43
IF "%choice%"=="14" SET productKey=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
IF "%choice%"=="15" SET productKey=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
IF "%choice%"=="16" SET productKey=44RPN-FTY23-9VTTB-MP9BX-T84FV
IF "%choice%"=="17" SET productKey=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
IF "%choice%"=="18" SET productKey=92NFX-8DJQP-P6BBQ-THF9C-7CG2H
IF "%choice%"=="19" GOTO exit

REM Invalid Choice Handling
IF "%productKey%"=="" (
    ECHO Invalid choice. Please try again.
    GOTO menu
)

REM Activating Windows
ECHO Activating Windows with the following key: %productKey%
cscript slmgr.vbs /ipk %productKey% >nul 2>&1
cscript slmgr.vbs /skms kms8.msguides.com >nul 2>&1
cscript slmgr.vbs /ato >nul 2>&1
ECHO ================================================
ECHO Activation Completed!
ECHO ================================================

REM Return to Menu or Exit
SET /P c=Would you like to quit? [Y/N]: 
CLS
IF /I "%c%"=="Y" GOTO exit
IF /I "%c%"=="N" GOTO menu

:exit
ECHO ================================================
ECHO THANK YOU FOR USING HACKINTER PRODUCT!
ECHO ================================================
EXIT
