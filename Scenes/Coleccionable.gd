extends Area2D

var ovni = false
var speed := 1.0

func _ready():
	if randf() > 0.5:
		ovni = true
		
	if !ovni:
		$Sprite.texture =preload("res://Assets/spike.png")	

func _on_body_entered(body):
	if body.is_in_group("Player"):
		if ovni:
			body.subirScore()
		else:
			body.morir()
		queue_free()
		
		
func _process(delta):
	position.y += speed
