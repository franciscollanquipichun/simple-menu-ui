extends MarginContainer

@export_group("Menu links")
@export_file("*.tscn") var startScene
@export_file("*.tscn") var settingsScene
@export_file("*.tscn") var aboutScene

func _on_start_pressed():
	if(startScene):
		get_tree().change_scene_to_file(startScene)


func _on_settings_pressed():
	if(settingsScene):
		get_tree().change_scene_to_file(settingsScene)


func _on_about_pressed():
	if(aboutScene):
		get_tree().change_scene_to_file(aboutScene)


func _on_exit_pressed():
	get_tree().quit()
