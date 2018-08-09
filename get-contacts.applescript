tell application "Address Book"
	set myList to name of people
	set retList to {}
	repeat with nameItem in myList
		set end of retList to (nameItem & ";")
	end repeat
	set the clipboard to (retList) as text
end tell
