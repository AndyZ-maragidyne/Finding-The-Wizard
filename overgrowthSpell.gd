extends Area2D


#bat wing = false, magic weeds = true
@export var magicWeeds = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !magicWeeds and Global.batWing:
		visible = false
	elif magicWeeds and Global.magicWeeds:
		visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if magicWeeds:
			Global.magicWeeds = true
		else:
			Global.batWing = true
		Global.increaseWaterSpell()
		visible = false
		$Icon.visible = false
	pass # Replace with function body.
