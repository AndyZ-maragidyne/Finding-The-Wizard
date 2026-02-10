extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.minotaurDefeated:
		$Icon1.visible = false
		$Icon2.visible = true
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if Global.overgrowthSpell:
			Global.minotaurDefeated = true
		else:
			$Label.visible = true
	pass # Replace with function body.
