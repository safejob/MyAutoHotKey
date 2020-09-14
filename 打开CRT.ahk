#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; 任意位置匹配
SetTitleMatchMode 2    

Activate(t)
{
  IfWinActive,%t%
  {
    WinMinimize
    return
  }
  ;SetTitleMatchMode 2    
  ;DetectHiddenWindows,on
  IfWinExist,%t%
  {
    WinShow
    WinActivate           
    return 1
  }
  return 0
}

ActivateAndOpen(t,p)
{
  if Activate(t)==0
  {
    Run %p%
    WinActivate
    return
  }
}

; Activie 激活指定标题（通过参数t传递，也可以是标题的一部分，只要能唯一识别该窗口即可）的窗口
; 如果当前窗口已经是待激活的窗口，那么隐藏它
;#r::Activate("USMShell")
#r::Activate("ahk_exe SecureCRT.exe")
; 激活钉钉 ctrl+q
^q::Activate("ahk_exe DingTalk.exe")
; ActivieAndOpen 在指定窗口不存在的情况下打开相应的应用程序
; 第一个参数是窗口标题
; 第二个参数是应用程序的全路径
;#e::ActivateAndOpen("ahk_exe SecureCRT.exe","D:\Program Files\SecureCRT85\SecureCRT.exe")
#e::ActivateAndOpen("ahk_exe SecureCRT.exe","D:\Program Files\SecureCRT85\SecureCRT.exe /S 0堡垒机-172.16.30.179-key")
^w::ActivateAndOpen("ahk_exe 启用触控板.bat","D:\Program Files\DevCon\amd64\启用触控板.lnk")
^e::ActivateAndOpen("ahk_exe 禁用触控板.bat","D:\Program Files\DevCon\amd64\禁用触控板.lnk")