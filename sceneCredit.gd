extends Sprite2D

func _process(delta):
	if Input.is_action_just_released("X"):
		# animation bouton
		get_tree().change_scene_to_file("res://sceneMenu.tscn")

