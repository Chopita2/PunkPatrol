extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_iniciar_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")


func _on_salir_pressed():
	get_tree().quit()
