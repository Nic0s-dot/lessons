extends Button

@onready var label = $"../Label"

func _on_pressed():
	label.text = "*тут ничего нет*"
