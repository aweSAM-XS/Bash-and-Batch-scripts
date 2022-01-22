cls

@ECHO OFF
prompt=aweSAM $B $P$G

echo ==================================================================================================================
echo ______     ______  ______     ______  ______     ______  ______     ______  ______     ______  ______     ______
echo \  __ \   / __  /  \  __ \   / __  /  \  __ \   / __  /  \  __ \   / __  /  \  __ \   / __  /  \  __ \   / __  /
echo  \ \ \ \ / / / /    \ \ \ \ / / / /    \ \ \ \ / / / /    \ \ \ \ / / / /    \ \ \ \ / / / /    \ \ \ \ / / / /
echo   \ \ \ \\/ / /      \ \ \ \\/ / /      \ \ \ \\/ / /      \ \ \ \\/ / /      \ \ \ \\/ / /      \ \ \ \\/ / /
echo    \/ / /  / /        \/ / /  / /        \/ / /  / /        \/ / /  / /        \/ / /  / /        \/ / /  / /
echo      / /  / /           / /  / /           / /  / /           / /  / /           / /  / /           / /  / /
echo     / /  / /           / /  / /           / /  / /           / /  / /           / /  / /           / /  / /
echo    / /  / / /\        / /  / / /\        / /  / / /\        / /  / / /\        / /  / / /\        / /  / / /\
echo   / / /\\ \ \ \      / / /\\ \ \ \      / / /\\ \ \ \      / / /\\ \ \ \      / / /\\ \ \ \      / / /\\ \ \ \
echo  / /_/ / \ \_\ \    / /_/ / \ \_\ \    / /_/ / \ \_\ \    / /_/ / \ \_\ \    / /_/ / \ \_\ \    / /_/ / \ \_\ \
echo /_____/   \_____\  /_____/   \_____\  /_____/   \_____\  /_____/   \_____\  /_____/   \_____\  /_____/   \_____\
echo. 
echo      aweSAM             aweSAM             aweSAM             aweSAM             aweSAM             aweSAM      
echo ==================================================================================================================

title aweSAM Locker

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

if NOT EXIST Locker goto MDLOCKER

:CONFIRM

echo Hey Sam, lock this shit up?(Y/N)

set/p "cho=>"

if %cho%==Y goto LOCK

if %cho%==y goto LOCK

if %cho%==n goto END

if %cho%==N goto END

echo Invalid choice.

goto CONFIRM

:LOCK

ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

echo Folder locked

goto End

:UNLOCK

echo Hey Sam, enter password to Unlock folder

set/p "pass=>"

if NOT %pass%==AWE5AM1TY goto FAIL

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker

echo Folder Unlocked successfully

goto End

:FAIL

echo Invalid password

goto end

:MDLOCKER

md Locker

echo Locker created successfully

goto End

:End