extends CharacterBody2D



const GRAVITY := 55
const SPEED = 100.0
const JUMP_VELOCITY = -50.0
const MAX_JUMP := 2
var ySpeed = 0
var jumpCount = 0
var isJumping = false
var isFalling = false

func _physics_process(delta: float) -> void:
	# Horizontal Speed
	var xSpeed = SPEED
	
	# Adding gravity and detecting jump/fall
	if not is_on_floor():
		if ySpeed < 0:
			isJumping = true
		elif ySpeed > 0:
			isFalling = true
			
		ySpeed += GRAVITY * delta 
	
	else:
		jumpCount = 0
		isJumping = false
		isFalling = false

	# Jumping and Double Jumping
	if Input.is_action_just_pressed("ui_up") and jumpCount < MAX_JUMP:
		jumpCount += 1
		ySpeed = JUMP_VELOCITY
		isJumping = true
		isFalling = false
		$playerAnimation.play("jump")

	# Get the input direction and handle the movement/deceleration.
	# Note get_axis() is short hand for input_actionStrengh1 - inputactionStrength2
	xSpeed = Input.get_axis("ui_left", "ui_right")
	xSpeed *= SPEED
	
	if isFalling:
		$playerAnimation.play("fall")
	
	if xSpeed > 0:
		$playerAnimation.flip_h = false
	elif xSpeed < 0:
		$playerAnimation.flip_h = true
			
	
	if not isFalling and not isJumping:
		if xSpeed > 0:
			$playerAnimation.play("run")
		elif xSpeed < 0:
			$playerAnimation.play("run")
		else: 
			$playerAnimation.play("Idle")
		
	
	velocity = Vector2(xSpeed, ySpeed)
	move_and_slide()
