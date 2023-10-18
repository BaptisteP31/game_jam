extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var isForeground = true
var is_dead=false


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	

	
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		var bruitstep = get_node("SFX_footstep")
		bruitstep.stop()
		
	if is_on_floor():
		var bruitstep = get_node("SFX_footstep")
		if bruitstep.is_playing() == false:
			bruitstep.play()
		
		
	# Handle Jump.
	if Input.is_action_just_pressed("A") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		var bruitJump = get_node("SFX_jump")
		bruitJump.play()
		
		var animeNode = get_node("PlayerAnim")
		animeNode.play("saut")
		
		var timer_de_saut = get_node("timer_saut")
		timer_de_saut.start()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	var direction = Input.get_axis("ui_left", "ui_right")
#	if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if is_on_wall():
		#get_tree().quit()
		death()
	
	var viewWidth = ProjectSettings.get_setting("display/window/size/viewport_width")
	if global_position.y > viewWidth :
		#get_tree().quit()
		death()

	if Global.isPicking:
		Global.health += 10
		Global.isPicking = false
		Global.currentFeu -= 1
		var bruitAspiration = get_node("SFX_aspiration")
		bruitAspiration.play()

		
	if Global.health == 0:
		#get_tree().quit()b
		death()

	move_and_slide()
	

func _input(event):
	
	var animNode = get_node("PlayerAnim")
	
	if Input.is_action_just_pressed("A") and is_on_floor():
		pass
		

	if isForeground and Input.is_action_just_pressed("Y"):
		animNode.play("teleport", 2.5)
		var bruitTP = get_node("SFX_tp")
		bruitTP.play()
		
		
		isForeground = false
		
		var teleport_timer = get_node("teleport_anim_timer")
		teleport_timer.start()

	elif not isForeground and Input.is_action_just_pressed("Y"):
		animNode.play("teleport", 2.5)
		
		var bruitTP = get_node("SFX_tp")
		bruitTP.play()
		
		isForeground = true
		
		var teleport_timer_down = get_node("teleport_anim_timer_down")
		teleport_timer_down.start()
		
		
func _on_timer_timeout():
	Global.health -= 1


func _on_teleport_anim_timer_timeout():
	var animNode = get_node("PlayerAnim")
	animNode.play("teleport", -2.5)
	
	position.y = -200
	scale.y = 0.8
	scale.x = 0.8
	
	var timer_de_trop = get_node("back_to_default_anim")
	timer_de_trop.start()
	

func _on_teleport_anim_timer_down_timeout():
	var animNode = get_node("PlayerAnim")
	animNode.play("teleport", -2.5)
	
	position.y = 0
	scale.y = 1
	scale.x = 1
	
	var timer_de_trop = get_node("back_to_default_anim")
	timer_de_trop.start()


func _on_back_to_default_anim_timeout():
	var animNode = get_node("PlayerAnim")
	animNode.play("default")


func _on_light_reduce_timer_timeout():
	var light = get_node("Light")
	light.scale =Vector2(float(Global.health)/100,float(Global.health)/100)

func _on_timer_saut_timeout():
	var animNode = get_node("PlayerAnim")
	animNode.play("default")


func death():
	is_dead=true
	var bg = get_node("../black_bg")
	bg.visible = true  
	bg.set_z_index(19)
	
	var mort = get_node("../Mort")
	mort.visible = true
	mort.set_z_index(20)
	Global.health = 100
	Global.currentFeu = 0
	get_tree().paused=true
	
	var shadow= get_node("../PointLight2D")
	shadow.visible=false

