extends AnimatedSprite2D



func _physics_process(delta):
	

	if Input.is_action_pressed("haut"):
		position.y -= 10
	elif Input.is_action_pressed("bas"):
		position.y += 10
	elif Input.is_action_pressed("droite"):
		position.x += 10
	elif Input.is_action_pressed("gauche"):
		position.x -= 10
	elif Input.is_action_just_pressed("B"):
		
		get_tree().change_scene_to_file("res://sceneMenu.tscn")
		
