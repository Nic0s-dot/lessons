@tool
extends EditorPlugin

const _name : String = "SystemSpecs"

func _enter_tree():
	add_autoload_singleton(_name , "res://addons/logger/system_specs.gd")
