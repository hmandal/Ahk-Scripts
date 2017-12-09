#SingleInstance force
CoordMode, Mouse, Screen
CoordMode, ToolTip, Screen
CoordMode, Pixel, Screen

;Gui, +hwndhgui -caption +toolwindow +alwaysontop +lastfound ; +E0x20
;Gui, Color, 0 ;set background to black
;WinSet, TransColor, 0 255 ;set black to transparent
;Gui, show, w%A_ScreenWidth% h%A_ScreenHeight% x0 y0
;hdc := DllCall("GetDC", "uint", hgui) ;get a handle to the windows device context

BreakLoop := true

^!a::
	BreakLoop := !BreakLoop
	; get current mouse pos
	MouseGetPos, MouseX, MouseY
	PixelGetColor, oldColor, %MouseX%, %MouseY%
	newMouseX := MouseX + 1
	newMouseY := MouseY + 1
	ToolTip, Waiting for on-screen changes, newMouseX, newMouseY

	;rectColor = 0x800080 ;purple
	;draws a sample rectangle
	;nextPixelX = % MouseX - 1
	;nextPixelY = % MouseY - 1
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	;nextPixelX = % MouseX
	;nextPixelY = % MouseY - 1
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	;nextPixelX = % MouseX + 1
	;nextPixelY = % MouseY - 1
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	
	;nextPixelX = % MouseX - 1
	;nextPixelY = % MouseY
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	;nextPixelX = % MouseX + 1
	;nextPixelY = % MouseY
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	
	;nextPixelX = % MouseX - 1
	;nextPixelY = % MouseY + 1
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	;nextPixelX = % MouseX
	;nextPixelY = % MouseY + 1
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)
	;nextPixelX = % MouseX + 1
	;nextPixelY = % MouseY + 1
	;SetPixel(hdc,  nextPixelX,  nextPixelY,  rectColor)

	;DllCall("ReleaseDC", "uint", hgui, "uint", hdc) ;release the device context, use this after youre done drawing
	
	Loop
	{
		if (BreakLoop)
		{
			ToolTip
			return
		}
		
		; get pixel color
		PixelGetColor, newColor, %MouseX%, %MouseY%
		ToolTip, Waiting for on-screen changes`nColor: %newColor%, newMouseX, newMouseY

		if newColor != %oldColor%
		{
			; play sound
			SoundBeep, 750, 1000  ; Play a higher pitch for half a second.
			ToolTip
			return
		}
		else
			continue
	}
	
;Gdi does not support transparency for SetPixel
SetPixel(hdc, x, y, BGR)
{
  DllCall("gdi32.dll\SetPixel","uint", hdc, "int", x,"int", y,"uint", BGR | 0x2000000)
}

^!z::
	ExitApp