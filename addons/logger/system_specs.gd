extends Node

func _ready():
	var programm_name = ProjectSettings.get_setting("application/config/name")
	header(programm_name, "green")
	get_date()

func header(text : String, color : String = "" ):
	if color == null or color.is_empty():
		color = "red"
	var constructor = {"color" : color}
	var _text = "[color={color}]"+ "[b]"
	print_rich(_text.format(constructor) + text)

func get_date():
	header("Data")
	print(str(Time.get_date_string_from_system()))
