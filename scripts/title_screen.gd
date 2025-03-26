## The following code is an adaption of Gwizz’s main menu
## tutorial on YouTube - Godot 4 Main Menu Beginner Tutorial 

## Link to Gwizz’s Tutorial: https://www.youtube.com/watch?v=vsKxB66_ngw

extends Control

@onready var info: Label = $Info ## code brought over from main.gd

var can_check_info: bool = true ## code brought over from main.gd

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")

## added function - shows the info label
func _on_info_pressed() -> void:
	if can_check_info:
		info.visible = not info.visible

## added function - hides the info label
func _on_back_pressed() -> void:
	if can_check_info:
		info.visible = not info.visible

func _on_quit_pressed() -> void:
	get_tree().quit()
