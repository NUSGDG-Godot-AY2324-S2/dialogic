extends CharacterBody2D

const ACCELERATION = 85
const HORIZONTAL_SPEED = 400
const JUMP_STRENGTH = 1200

func _physics_process(delta):
	make_movement()


func make_movement():
	var direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var is_jumping = Input.get_action_strength("ui_up") and is_on_floor()
	
	if direction == 1:
		$AnimatedSprite2D.scale.x = abs($AnimatedSprite2D.scale.x)
	elif direction == -1:
		$AnimatedSprite2D.scale.x = -abs($AnimatedSprite2D.scale.x)
	
	velocity = Vector2(
		direction * HORIZONTAL_SPEED,
		-JUMP_STRENGTH if is_jumping else velocity.y + ACCELERATION)
	move_and_slide()
