(*
 * Copyright (C) 2025 Ian M. Fink.  All rights reserved.
 *
 * This program is free software:  you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 * 
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, please see: https://www.gnu.org/licenses.
 *
 * Tabstop:	4
 *)

tell application "System Events"
	set spRunning to exists process "System Preferences"
end tell

if spRunning is false then
	activate "System Preferences"
end if

tell application "System Preferences"
	reveal pane "com.apple.preference.mouse"
end tell

delay 1

tell application "System Events" to tell process "System Preferences"
	set value of slider "Tracking speed" of window 1 to 3
end tell

--quit application "System Preferences"

