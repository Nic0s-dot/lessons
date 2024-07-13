extends Button

@onready var label = $"../Label"

func _on_pressed():
	label.text = "О нет! *вы больше не человек UwU*"
	await get_tree().create_timer(4).timeout
	get_tree().quit()
