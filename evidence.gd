extends Area2D

@export var SpiceTrail = false
@export var MagentaInkBottle = false
@export var MilkBottle = false
@export var TreantBranch = false
@export var Fairy = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if SpiceTrail and Global.SpiceTrail:
		visible = false
	elif MagentaInkBottle and Global.MagentaInkBottle:
		visible = false
	elif MilkBottle and Global.MilkBottle:
		visible = false
	elif TreantBranch and Global.TreantBranch:
		visible = false
	elif Fairy and Global.Fairy:
		visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if SpiceTrail:
			Global.SpiceTrail = true
		elif MagentaInkBottle:
			Global.MagentaInkBottle = true
		elif MilkBottle:
			Global.MilkBottle = true
		elif TreantBranch:
			Global.TreantBranch = true
		elif Fairy:
			Global.Fairy = true
		Global.increaseEvidence()
		visible = false
	pass # Replace with function body.
