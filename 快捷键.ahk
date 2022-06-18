#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 限制热键生效范围
#IfWinActive,ahk_exe SecureCRT.exe
:*:nginxt::../../sbin/nginx -t

:*:grep::`grep --color -n `
:*:.f::./*.conf

::ll::ls -lh --color=always --time-style=long-iso -tr
#IfWinActive
