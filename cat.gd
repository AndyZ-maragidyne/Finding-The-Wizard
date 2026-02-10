extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.talkedToCat:
		$ClickMe.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !$Dialogue.inStory:
		$Dialogue/Box.visible = false
	else:
		$Dialogue/Box.visible = true
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		$ClickMe.visible = false
		Global.talkedToCat = true
		print("Playing story")
		$Dialogue.visible = true
		$Dialogue.ContinueStory()
	pass # Replace with function body.
