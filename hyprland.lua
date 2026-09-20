local touchpad = true

hl.bind(mainMod .. "+ F10", function()
	touchpad = not touchpad

	hl.device({
		name = "your-touchpad-name",
		enabled = touchpad,
	})
    
--if you need touchpad notifications
	if touchpad then
		hl.exec_cmd("notify-send 'Touchpad Enabled'") 
	else
		hl.exec_cmd("notify-send 'Touchpad Disabled'")
	end

end)
