#ifndef PayloadDir
  #define PayloadDir "payload"
#endif
[Setup]
AppId={{4191C3C4-2FB6-4B40-9AF7-40778BA13AB4}
AppName=Zunavo
AppVersion=0.1.5
AppPublisher=Zunavo
AppPublisherURL=https://zulaikahn.github.io/orbit/
DefaultDirName={localappdata}\Programs\Orbit
DefaultGroupName=Zunavo
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir=dist
OutputBaseFilename=Zunavo-Setup-0.1.5-Windows
SetupIconFile=zunavo.ico
UninstallDisplayIcon={app}\Zunavo.exe
Compression=lzma2/fast
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes
RestartApplications=no
SetupLogging=yes
[Tasks]
Name: desktopicon; Description: "Create a desktop shortcut"; GroupDescription: "Shortcuts:"; Flags: unchecked
[Files]
Source: "{#PayloadDir}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{group}\Zunavo"; Filename: "{app}\Zunavo.exe"
Name: "{group}\Uninstall Zunavo"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Zunavo"; Filename: "{app}\Zunavo.exe"; Tasks: desktopicon
[Run]
Filename: "{app}\Zunavo.exe"; Description: "Open Zunavo"; Flags: nowait postinstall skipifsilent
; User profile/watchlist data is deliberately outside the installation directory.
