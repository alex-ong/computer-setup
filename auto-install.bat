winget install --id=Google.Chrome -e
winget install --id=7zip.7zip -e
winget install -e --id Notepad++.Notepad++
winget install --id=Discord.Discord -e
winget install --id=Microsoft.VisualStudio.2022.Community -e
winget install --id=Microsoft.VisualStudioCode -e

rem You can remove /silent below to choose options manually
winget install --id=Git.Git -e --override "/silent /COMPONENTS=icons,assoc,assoc_sh,gitlfs,scalar"
winget install --id=GitHub.GitLFS -e
winget install --id=JoachimEibl.KDiff3 -e
winget install --id=PuTTY.PuTTY -e
winget install --id=GlavSoft.TightVNC -e
winget install --id=OBSProject.OBSStudio -e
winget install --id=VideoLAN.VLC -e

rem The following two commands are for csharpier, an autoformatter for c#
winget install --id=Microsoft.DotNet.SDK.6 -e
dotnet tool install csharpier -g
winget install --id=DominikReichl.KeePass
winget install --id=Guru3D.Afterburner
winget install --id=dotPDNLLC.paintdotnet

mkdir C:\Python38
winget install --id=python.python.3.8 --override "installallusers=1 targetdir=c:\python38 defaultcustomtargetdir=c:\python38 prependpath=1 compileall=1"

mkdir c:\python39
winget install --id=python.python.3.9 --override "installallusers=1 targetdir=c:\python39 defaultcustomtargetdir=c:\python39 prependpath=1 compileall=1"

mkdir c:\python310
winget install --id=python.python.3.10 --override "installallusers=1 targetdir=c:\python310 defaultcustomtargetdir=c:\python310 prependpath=1 compileall=1"

mkdir c:\python312
winget install --id=python.Python.3.12 --override "InstallAllUsers=1 TargetDir=C:\Python312 DefaultCustomTargetDir=C:\Python312 PrependPath=1 CompileAll=1"
rem Use the following line to install, linking to PuTTy. to use OpenSSH, refer to Git Extensions docs above.
winget install --id=GitExtensionsTeam.GitExtensions -i

winget install -e --id Nvidia.GeForceExperience
winget install -e --id RiotGames.Valorant.AP
winget install -e --id Valve.Steam
winget install -e --id Docker.DockerDesktop
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id Microsoft.PowerShell
winget install -e --id Obsidian.Obsidian
winget install -e --id Audacity.Audacity
winget install -e --id Microsoft.OpenSSH.Beta
