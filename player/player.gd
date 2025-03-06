extends CharacterBody2D


const SPEED = 500.0


func _physics_process(delta: float) -> void:
	var ud := Input.get_axis("up", "down")
	if ud:
		velocity.y = ud * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)


	var lr := Input.get_axis("left", "right")
	if lr:
		velocity.x = lr * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
