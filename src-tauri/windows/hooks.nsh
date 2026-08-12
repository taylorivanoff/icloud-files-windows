; Startup + icloud-drive:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Drive" '"$INSTDIR\iCloud Drive.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-drive" "" "URL:iCloud Drive"
  WriteRegStr HKCU "Software\Classes\icloud-drive" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-drive\shell\open\command" "" '"$INSTDIR\iCloud Drive.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Drive"
  DeleteRegKey HKCU "Software\Classes\icloud-drive"
!macroend
