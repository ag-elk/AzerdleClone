## Title: Azerdle
## Author: Awf Ibrahim (Awfy)
## Date: 2024
## Code version: 1.1
## Availability: https://github.com/Awfyboy/Azerdle

## In the proceeding comments any majorly unchanged section of the original 
## repository’s code begins with the line – "/Azerdle original code"
## and ends with "Azerdle original code\"
## additional new comments begin with "##"

##/Azerdle original code
extends TextureButton

@onready var anim: AnimationPlayer = $AnimationPlayer

@export_category("Images")
@export var on = preload("res://assets/music_button_on.png")
@export var off = preload("res://assets/music_button_on.png")

var is_mute: bool = false

func _on_mouse_entered():
	modulate.a = 0.7

func _on_mouse_exited():
	modulate.a = 1.0
 
func _on_pressed():
	anim.stop()
	anim.play("squish")
	is_mute = not is_mute
	if is_mute:
		texture_normal = off
	else:
		texture_normal = on
##Azerdle original code\
