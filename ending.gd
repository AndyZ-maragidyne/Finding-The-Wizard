extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.foundEvidence <= 1:
		$Bad.visible =  true
		$Bad.ContinueStory()
	elif Global.foundEvidence <= 3:
		$Neutral.visible = true
		$Neutral.ContinueStory()
	else:
		$Good.visible = true
		$Good.ContinueStory()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
