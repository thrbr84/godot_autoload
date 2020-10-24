extends CanvasLayer

export(PackedScene) var mainScene
onready var anim: AnimationPlayer = $Control/AnimationPlayer

func goToScene(_scene, _title = null, _showHud = false):
	Game.game_data['title'] = _title
	
	var _ret = get_tree().change_scene_to(_scene)
	if _ret == OK:
		showHide(_showHud)

func goToMain(_showHud):
	goToScene(mainScene, null, _showHud)

func showHide(status = null):
	var anim_pos = anim.current_animation_position
	
	match status:
		true: if anim_pos == 0: anim.play("show_hide")
		false: if anim_pos > 0: anim.play_backwards("show_hide")
		_:
			if anim_pos == 0:
				anim.play("show_hide")
			else:
				anim.play_backwards("show_hide")
