extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var isForeground = true


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if is_on_wall():
		get_tree().quit()
	
	var viewWidth = ProjectSettings.get_setting("display/window/size/viewport_width")
	if global_position.y > viewWidth :
		get_tree().quit()
		
	if Global.isPicking:
		print("picked")
		Global.health += 10
		Global.isPicking = false
		
	if Global.health == 0:
		get_tree().quit()

	move_and_slide()
	

func _input(event):

	if isForeground and Input.is_action_just_pressed("Teleport_up"):
		position.y = -200
		scale.y = 0.8
		scale.x = 0.8
		isForeground = false

	elif not isForeground and Input.is_action_just_pressed("Teleport_up"):

		position.y = 0
		scale.y = 1
		scale.x = 1
		isForeground = true

func _on_timer_timeout():
	Global.health -= 5
	print(Global.health)
