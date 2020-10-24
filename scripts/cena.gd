extends Node2D

func _ready():
	$TitleLabel.text = Game.game_data['title']

func _on_BtnMain_pressed():
	Hud.goToMain(true)
