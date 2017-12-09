
# Ahk-Scripts
Useful AutoHotkey scripts

# PixelAlarm.ahk
- Description
	- Set a pixel to track, when it changes color, sounds a audio beep.
- Usage
	- Position your mouse cursor on the pixel you wanna track
	- Press Ctrl-Alt-A 
- Utility
	- Waiting on a task which is taking a little long time? Activate the pixelAlarm to track the pixel which you know would change when the task finishes. 
		- What can you do meanwhile :relaxed: ?
		1.  Head-down to rest your eyes
		2. Take a short walk or focus away from your computer
		3. Read some article or news on another monitor, without worrying about missing to know when your task finished.
- Todo
	- [ ] Set tracked pixel to another pixel with same hotkey trigger.
	- [ ] Track multiple pixels at once in parallel.
	- [ ] Configurable hotkeys and beep sound in config file (.ini?)
- Credits: To me :smile:
# CycleClipboard.ahk
- Description
	- Copy multiple texts sat once and paste them one by one (just like Visual Studio IDE) across any application.
- Usage
	- Copy multiple texts with Ctrl+C
	- Go to the location (same or different app) you want to paste into, Ctrl+Shift+V to paste.
- Utility 
	- Tired of repetitive task of copy item1 paste item1, copy item2 paste item2, and so on...? Use CycleClipboard to copy item1, item2 then paste item2, item1 at one go.
- Todo
	- [ ] Improve stability and crashes.
	- [ ] Extend to image and other file types.
- Credits: https://autohotkey.com/board/topic/18929-clipboard-log-and-scroll-through-passed-clipboard-entrys/

# KeybMirror.ahk
- Description
	- Mirror the physical keyboard.
- Usage
	-  Remaps the spacebar to be a modifier. When space is held, the keyboard is inverted, with the line of symmetry between g and h. Thus, e would become i, b would become n, p would become q, and so on.
	- If the spacebar is depressed and released without pressing any other keys, a single space is sent. 
	- Modifier keys such as shift or control can be used in conjuction with Half-qwerty.
- Utility 
	-  Half-QWERTY: One-handed Typing
- Credits: https://autohotkey.com/board/topic/1257-half-qwerty-one-handed-typing/
