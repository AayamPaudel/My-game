extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


const SPEED = 400.0
const JUMP_VELOCITY = -850.0

func _physics_process(delta: float) -> void:
	
	if velocity.x>1 or velocity.x < -1:
		animated_sprite_2d.animation= ("run")
	else:
		animated_sprite_2d.animation= ("idle")
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		#animated_sprite_2d.animation= ("jump")
	
	if Input.is_action_just_pressed("jump1") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction := Input.get_axis("move_left1", "move_right1")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	move_and_slide()
	
	if velocity.x<-1:
		animated_sprite_2d.flip_h = true
	
	if velocity.x>1:
		animated_sprite_2d.flip_h = false
	
