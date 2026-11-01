#ifndef PayloadDir
  #define PayloadDir "payload"
#endif
[Setup]
AppId={{4191C3C4-2FB6-4B40-9AF7-40778BA13AB4}
AppName=Orbit
AppVersion=0.1.4
AppPublisher=Orbit
AppPublisherURL=https://zulaikahn.github.io/orbit/
DefaultDirName={localappdata}\Programs\Orbit
DefaultGroupName=Orbit
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir=dist
OutputBaseFilename=Orbit-Setup-0.1.4-Windows
SetupIconFile=orbit.ico
UninstallDisplayIcon={app}\Orbit.exe
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
Name: "{group}\Orbit"; Filename: "{app}\Orbit.exe"
Name: "{group}\Uninstall Orbit"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Orbit"; Filename: "{app}\Orbit.exe"; Tasks: desktopicon
[Run]
Filename: "{app}\Orbit.exe"; Description: "Open Orbit"; Flags: nowait postinstall skipifsilent
; User profile/watchlist data is deliberately outside the installation directory.
