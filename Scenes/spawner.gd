extends Node2D

var ColeccionableEscena = preload("res://Scenes/coleccionable.tscn")
var dificultad = 0

func _ready():
	$Timer.stop()
	$Timer.wait_time = randf_range(2,4)
	$Timer.start()
func _on_timer_timeout():
	dificultad += .15
	if $Timer.wait_time > .1:
		$Timer.wait_time -=.005
	var coleccionable = ColeccionableEscena.instantiate()
	coleccionable.speed += dificultad
	add_child(coleccionable)
