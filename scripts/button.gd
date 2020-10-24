extends TouchScreenButton

export(PackedScene) var path
export(String) var title
export(bool) var showHud = false

func _on_Button1_pressed():
	Hud.goToScene(path, title, showHud)
