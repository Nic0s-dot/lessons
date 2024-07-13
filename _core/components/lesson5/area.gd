extends Control

func _on_mouse_exited():
	position -= get_local_mouse_position()

func _on_mouse_entered():
	position += get_local_mouse_position()

func _on_button_pressed():
	get_tree().quit()
