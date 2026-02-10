extends Node

var town = preload("res://town.tscn").instantiate()
var sewer = preload("res://sewer.tscn").instantiate()
var sewer2 = preload("res://sewer2.tscn").instantiate()
var apartment = preload("res://apartment.tscn").instantiate()
var forest = preload("res://forest.tscn").instantiate()
var store = preload("res://store.tscn").instantiate()



var foundEvidence = 0
#water walking spell
var waterSpellnum = 0
var waterWalkingSpell = false
var waterElemental = false
var greenGoo = false

#overgrowth spell
var overgrowthSpellnum = 0
var overgrowthSpell = false
var batWing = false
var magicWeeds = false

#ice statis spell
var iceSpellnum = 0
var iceStasisSpell = false
var sparklingWater = false
var mints = false

#fireball spell
var fireSpellnum = 0
var fireballSpell = false
var hellPepper = false
var matchbox = false


func _process(delta: float) -> void:
	if hellPepper and matchbox:
		fireballSpell = true
	if waterElemental and greenGoo:
		waterWalkingSpell = true
	if batWing and magicWeeds:
		overgrowthSpell = true
	if sparklingWater and mints:
		iceStasisSpell = true
	pass

func increaseWaterSpell():
	waterSpellnum += 1
	
func increaseIceSpell():
	iceSpellnum += 1
	
func increaseOvergrowthSpell():
	overgrowthSpellnum += 1
	
func increaseFireSpell():
	fireSpellnum += 1

func increaseEvidence():
	foundEvidence += 1
	
var wyvernDefeated = false
var minotaurDefeated = false
var treesDefeated = false

var SpiceTrail = false
var MagentaInkBottle = false
var MilkBottle = false
var TreantBranch = false
var Fairy = false
var talkedToCat = false
