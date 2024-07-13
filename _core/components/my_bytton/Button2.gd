extends Button

@onready var label = $"../Label"

func _on_pressed():
	label.text = "Ура вы сделали првельный выбор!"
	await get_tree().create_timer(4).timeout
	get_tree().quit()
