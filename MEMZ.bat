color 0a
cls
@ECHO OFF
title MEMZ.vr
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
cls
:UNLOCK





echo Please Don`t : y/n
set/p "pass=>"
if NOT %pass%== y goto end
echo If you chage your mind you still have 5 sec. to close the program.
echo Press any key to continue . . .
set/p "pass=>"
if NOT %pass%== systemCall_terminateProgram goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully
goto End
cls

:FAIL
color 1a
echo Deleting Files%random%sys32 Deleting Files%random%Passwordsys32%random%sys32%random%%random%%random%sys32 
color 2b
echo ????????Password%random%sys32 Deleting Files%random%sys32%random%%random%Deleting system 32 File %random%Deleting Files%random%Password%random%%random%%random%Deleting Files%random%Password%random%Password%random%
color 3c
echo ????????%random%%random%%random%Deleting system 32Files%random%%random%%random%%random%Deleting sys32 FilesUserName%sys32random%sys32 Password%random%Password%random%
color 4d
echo ????????%random%%random%%random%Deleting Files%random%%random% system 32%UserName%random%%random%%random%%random%Deleting Files%sys32random%UserName%random%%random%
color 5e
echo ????????
%0%random%%random%Deleting Files%random%%random%Deleting Files system 32
PING 1.1.1.1 -n 0.3 >NUL
goto FAIL
:MDLOCKER
md Private
echo Private created successfully
goto End
:End