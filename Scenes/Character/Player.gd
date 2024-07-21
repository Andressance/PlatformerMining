extends CharacterBody2D


const SPEED = 10.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):

	if Input.is_action_pressed("Left"):
		velocity.x -= SPEED
	elif Input.is_action_pressed("Right"):
		velocity.x += SPEED
	else:
		velocity.x = 0

	velocity.y += gravity * delta

	if is_on_floor() and Input.is_action_just_pressed("Up"):
		velocity.y = JUMP_VELOCITY

	move_and_slide()