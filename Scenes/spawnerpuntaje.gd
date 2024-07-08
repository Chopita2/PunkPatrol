extends Node2D

var ColeccionableEscena2 = preload("res://Scenes/Doblepuntaje.tscn")
var dificultades = 0

func _ready():
	$Timer.stop()
	$Timer.wait_time = randf_range(2,4)
	$Timer.start()
func _on_timer_timeout():
	dificultades += .15
	if $Timer.wait_time > .1:
		$Timer.wait_time -=.005
	var coleccionables = ColeccionableEscena2.instantiate()
	coleccionables.speed += dificultades
	add_child(coleccionables)
