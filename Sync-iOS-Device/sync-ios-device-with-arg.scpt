# requires argument: q

on alfred_script(q)

	tell application "iTunes"
		try
			set theSources to (every source whose kind is iPod)
			repeat with src in theSources
				try
					with timeout of 600 seconds
						if (get name of src) is in {q} then
							tell src to update
						end if
					end timeout
				end try
			end repeat
		end try
	end tell

end alfred_script
