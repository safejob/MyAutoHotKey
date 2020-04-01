#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+Left::  MouseMove, -5,  0,, R
+Up::    MouseMove,  0, -5,, R
+Right:: MouseMove,  5,  0,, R
+Down::  MouseMove,  0,  5,, R