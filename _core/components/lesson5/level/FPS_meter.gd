extends Label

func _physics_process(_delta):
	text = "fps: " + str(Engine.get_frames_per_second())
