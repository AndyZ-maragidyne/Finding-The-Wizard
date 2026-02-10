extends Node2D


@onready var recipeVisible = false
@onready var Rpressed = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
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
	pass


func _on_apartment_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://apartment.tscn")
	pass # Replace with function body.


func _on_forest_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://forest.tscn")
	pass # Replace with function body.


func _on_sewer_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://sewer.tscn")
	pass # Replace with function body.


func _on_grocery_store_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_tree().change_scene_to_file("res://store.tscn")
	pass # Replace with function body.
