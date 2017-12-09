; General script settings
#SingleInstance, Force
SetBatchlines, -1
SendMode, Input
SetWorkingDir, %A_ScriptDir%

~^c::

clip_index++
changing_clip = %clip_index%
MytmpClip = %clipboard%
Clip_Array%clip_index% := MytmpClip
tmpclipr := Clip_Array%clip_index%
return

^+V::

tmpclipr := Clip_Array%changing_clip%

clip_index--
changing_clip = %clip_index%
if(clip_index < 1)
  clip_index = 1

StringLen, tmpclipr_length, tmpclipr
StringReplace, tmpclipr, tmpclipr, `n, `n, UseErrorLevel
tmpclipr_length -= ErrorLevel
clipboard = %tmpclipr%
Send ^v

return