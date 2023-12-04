extends RichTextLabel

@export_group("Author credits")
@export var authorName    = ""
@export var authorWebsite = ""
@export var projectRepository = ""

func _ready():
	text = ""
	bbcode_enabled = true
	append_text("Developed in [b]Godot Engine[/b] " + getGodotVersion())
	append_text("\n" + getAuthorName())
	append_text("\n" + getAuthorWebsite())

func getAuthorName():
	if authorName.is_empty():
		return ""
	return " by [b]" + authorName + "[/b]"

func getAuthorWebsite():
	if authorWebsite.is_empty():
		return ""
	return "[url]" + authorWebsite + "[/url]"

func getGodotVersion():
	return "v" + Engine.get_version_info().string
