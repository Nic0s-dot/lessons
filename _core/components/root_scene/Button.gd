extends Button

@onready var line_edit = $"../LineEdit"

func _on_pressed():
	SystemSpecs.header(line_edit.text, "pink")
