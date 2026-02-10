extends Area2D


#green goo = false, water elemental = true
@export var waterElemental = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !waterElemental and Global.greenGoo:
		visible = false
	elif waterElemental and Global.waterElemental:
		visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if waterElemental:
			Global.waterElemental = true
		else:
			Global.greenGoo = true
		visible = false
		$Icon.visible = false
		Global.increaseWaterSpell()
	pass # Replace with function body.
