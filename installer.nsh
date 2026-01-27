!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Drive" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-drive" "" "URL:iCloud Drive"
  WriteRegStr HKCU "Software\Classes\icloud-drive" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-drive\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Drive"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-drive"
!macroend
