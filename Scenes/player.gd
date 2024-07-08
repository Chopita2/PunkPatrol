extends CharacterBody2D

var speed := 90
signal scoreUP
signal died
@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	var inputVel = Input.get_axis("ui_left","ui_right")
	var Saltar = Input.get_action_strength("ui_accept")
	velocity.x = inputVel*speed
	
	if Saltar != 0 and is_on_floor():
		velocity.y = 0
		velocity.y -= Saltar * 210
		
	if !is_on_floor():
		velocity.y += 10
	move_and_slide()

	if velocity.x != 0:
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")
	if inputVel != 0:
		animated_sprite_2d.flip_h = inputVel <0
	if velocity.y < 0:
		animated_sprite_2d.set_animation("Jump")
		
func subirScore():
	$Sonido.play()
	emit_signal("scoreUP")

func morir():
	$Sonidomorir.play()
	animated_sprite_2d.play("hurt")
	emit_signal("died")
	$"../HBoxContainer".hide()

func _ready():
	pass
func _process(delta):
	pass
func _input(event):
	pass

