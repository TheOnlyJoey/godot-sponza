extends WorldEnvironment

func _ready():
	var interface = ARVRServer.find_interface("OpenVR")
	if interface and interface.initialize():
		get_viewport().arvr = true
		get_viewport().hdr = false
		
		$OVRFirstPerson/Right_Hand.connect("button_pressed", $OVRFirstPerson/HUD_Anchor/Settings_VR, "_on_Right_Hand_button_pressed")