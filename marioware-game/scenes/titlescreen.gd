extends Node2D

@onready var start_button: Button = $VBoxContainer/start

func _ready() -> void:
	if !start_button.pressed.is_connected(_on_start_pressed):
		start_button.pressed.connect(_on_start_pressed)

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_scene.tscn")
