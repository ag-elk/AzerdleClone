## The following code is an adaption of KobeDev’s pause menu
## tutorial on YouTube - Make a Pause Menu in Godot in 5 Minutes! 

## Link to KobeDev’s Tutorial: https://www.youtube.com/watch?v=e9-WQg1yMCY
## Link to the source code: https://github.com/kobeDevStuff/2D-Procedurally-Generating-with-unloading/blob/main/pause_menu.gd

extends Control

@onready var pauseMenu = preload("res://scenes/menu.tscn") ## simple variable name change
@onready var info: Label = $Info ## code brought over from main.gd

var can_check_info: bool = true ## code brought over from main.gd

func _ready() -> void:
	$AnimationPlayer.play("RESET")
	
func resume() -> void:
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause() -> void:
	get_tree().paused = true
	$AnimationPlayer.play("blur")

func testEsc() -> void:
	if Input.is_action_just_pressed("esc") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()

func _on_resume_pressed() -> void:
	resume()

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
	
func _process(delta):
	testEsc()
