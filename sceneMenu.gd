extends Sprite2D



func _process(delta):
	if Input.is_action_just_released("A") :
		# animation bouton
		get_tree().change_scene_to_file("res://main.tscn")
	if Input.is_action_just_released("B"):
		get_tree().quit()
	if Input.is_action_just_released("X"):
		get_tree().change_scene_to_file("res://credits.tscn")
	if Input.is_action_just_released("Y"):
		print("Futur crédit")
