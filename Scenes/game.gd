extends Node

@onready var player = $Player
var scoreJugador := 0

func _ready():
	$Sonidomain.play()
	player.connect("scoreUP",subirScore)
	player.connect("died",morir)
func subirScore():
	scoreJugador +=1
	$HBoxContainer/Score.text = str(scoreJugador)
func morir():
	$pantallamuerte/HBoxContainer/FinalScore.text = str(scoreJugador)
	$pantallamuerte.show()
	get_tree().paused = true 
