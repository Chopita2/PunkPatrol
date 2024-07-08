extends Area2D

var robot = false
var speed := 1.0

func _ready():
	if randf() > 1:
		robot = true
func _on_body_entered(body):
	if body.is_in_group("Player"):
		if robot:
			body.subirdobleScore()
		queue_free()	
	
func _process(delta):
	position.y += speed
