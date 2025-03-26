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
extends Label

@onready var button = $TextureButton
@onready var anim = $AnimationPlayer

func _on_button_pressed():
	SignalBus.virtual_enter_pressed.emit()
	anim.stop()
	anim.play("squish")

func _on_button_mouse_entered():
	button.modulate.a = 0.7

func _on_button_mouse_exited():
	button.modulate.a = 1.0
##Azerdle original code\
