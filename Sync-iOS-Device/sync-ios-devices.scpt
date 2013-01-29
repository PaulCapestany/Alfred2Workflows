# make sure to change "My Device 1", "My Device 2" to a list of whatever devices you want to sync

on alfred_script(q)

	tell application "iTunes"
		try
			set theSources to (every source whose kind is iPod)
			repeat with src in theSources
				try
					with timeout of 600 seconds
						if (get name of src) is in {"My Device 1", "My Device 2"} then
							tell src to update
						end if
					end timeout
				end try
			end repeat
		end try
	end tell

end alfred_script
