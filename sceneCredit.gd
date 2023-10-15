extends Sprite2D

func _process(delta):
	if Input.is_action_just_released("button_X"):
		# animation bouton
		get_tree().change_scene_to_file("res://menu.tscn")
	if Input.is_action_just_released("button_B"):
		get_tree().quit()
