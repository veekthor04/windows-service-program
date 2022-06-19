[Setup]
AppName=A Windows Service
AppVersion=1.5
WizardStyle=modern
DefaultDirName={autopf}\A Windows Service
DefaultGroupName=A Windows Service
UninstallDisplayIcon={app}\server.exe
Compression=lzma2
SolidCompression=yes
OutputDir=installer
OutputBaseFilename=A Windows Service
LicenseFile={#file AddBackslash(SourcePath) + "compiler files\agreement.txt"}

[Files]
Source: "dist\server.exe"; DestDir: "{app}"
Source: "compiler files\uninstall-dependencies.bat"; DestDir: "{app}\bin"

[Run]
Filename: "{app}\server.exe"; StatusMsg: "Installing Windows Service ... "; Parameters: "--startup=auto install";  Flags: runhidden waituntilterminated  
Filename: "{app}\server.exe"; StatusMsg: "Starting Windows Service ... "; Parameters: "start";  Flags: runhidden waituntilterminated

[UninstallRun]
Filename: "{app}\server.exe"; Parameters: "stop";  Flags: runhidden waituntilterminated
Filename: "{app}\bin\uninstall-dependencies.bat"; Parameters: "install"; Flags: runhidden waituntilterminated
Filename: "{app}\server.exe"; Parameters: "remove";  Flags: runhidden waituntilterminated

[Icons]
Name: "{group}\A Windows Service"; Filename: "{app}\server.exe"
