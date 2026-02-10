extends Node


@onready var dialogue = get_node("/..")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if !dialogue.isInStory():
		#get_tree().get_root().get_node("Dialogue/Choices").visible = false
		#get_tree().get_root().get_node("Dialogue/Label").visible = false
	pass
