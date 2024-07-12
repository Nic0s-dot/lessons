extends VBoxContainer

@onready var line_edit = $LineEdit
@onready var label = $Label

func _on_button_pressed():
	if line_edit.text == "girl":
		line_edit.text = ""
	#else: 
	label.text = line_edit.text
	print("men")
