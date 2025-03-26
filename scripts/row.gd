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
extends HBoxContainer

#funkcija, kas veic darbības ar blokiem rindā
func _ready():
	for block in get_children():
		block.flip_sound.pitch_scale = block.base_pitch + (0.1 * block.get_index())
##Azerdle original code\
