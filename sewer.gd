extends Node2D

@onready var recipeVisible = false
@onready var Rpressed = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.wyvernDefeated:
		$Items/BatWing.visible = true
		$Items/GreenGoo.visible = true
		$Wyvern.visible = false
		if Global.batWing:
			$Items/BatWing.visible = false
			$Items/BatWing/Icon.visible = false
		if Global.greenGoo:
			$Items/GreenGoo.visible = false
			$Items/GreenGoo/Icon.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Recipes"):
		if !Rpressed:
			recipeVisible = !recipeVisible
			get_node("Recipe_Menu").visible = recipeVisible
			Rpressed = true
	if Input.is_action_just_released("Recipes"):
		Rpressed = false
		
	if Global.wyvernDefeated:
		$Items/BatWing.visible = true
		$Items/GreenGoo.visible = true
		$Wyvern.visible = false
	pass


func _on_back_button_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://town.tscn")
	pass # Replace with function body.


func _on_sewer_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://sewer2.tscn")
	pass # Replace with function body.
