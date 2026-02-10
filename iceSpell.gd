extends Area2D

#mints = false, sparkling water = true
@export var sparklingWater = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !sparklingWater and Global.mints:
		visible = false
	elif sparklingWater and Global.sparklingWater:
		visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if sparklingWater:
			Global.sparklingWater = true
		else :
			Global.mints = true
		Global.increaseIceSpell()
		visible = false
	pass # Replace with function body.
