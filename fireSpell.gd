extends Area2D


#matchbox = false, hell pepper = true
@export var hellPepper = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if !hellPepper and Global.matchbox:
		visible = false
	elif hellPepper and Global.hellPepper:
		visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if hellPepper:
			Global.hellPepper = true
			visible = false
		else:
			if Global.waterWalkingSpell:
				Global.matchbox = true
				visible = false
			else:
				$Label.visible = true
		Global.increaseFireSpell()
		
	pass # Replace with function body.
