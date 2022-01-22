@ECHO OFF  
color 0a
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
echo.
echo This script is intended to create fresh update folders and data within them to eliminate any file corruption or incompatibilities
echo.  
PAUSE  
echo.
attrib -h -r -s %windir%system32catroot2
attrib -h -r -s %windir%system32catroot2*.*
net stop wuauserv
net stop CryptSvc
net stop BITS
ren %windir%system32catroot2 catroot2.old
ren %windir%SoftwareDistribution SoftwareDistribution.old
ren "%ALLUSERSPROFILE%application dataMicrosoftNetworkdownloader" downloader.old
net Start BITS
net start CryptSvc
net start wuauserv
echo.
echo Windows Update should now work aweSAMly :-).  
echo.  PAUSE
