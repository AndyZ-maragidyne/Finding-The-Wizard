extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$IceStasis/Item.visible = false
	$SparlingWater/Item.visible = false
	$Mints/Item.visible = false
	$Overgrowth/Item.visible = false
	$BatWing/Item.visible = false
	$MagicWeeds/Item.visible = false
	$Water/Item.visible = false
	$WaterElemental/Item.visible = false
	$GreenGoo/Item.visible = false
	$FireBall/Item.visible = false
	$HellPepper/Item.visible = false
	$Matchbox/Item.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.iceStasisSpell:
		$IceStasis/Item.visible = true
		pass
	if Global.sparklingWater:
		$SparlingWater/Item.visible = true
		pass
	if Global.mints:
		$Mints/Item.visible = true
		pass
		
	if Global.overgrowthSpell:
		$Overgrowth/Item.visible = true
		pass
	if Global.batWing:
		$BatWing/Item.visible = true
		pass
	if Global.magicWeeds:
		$MagicWeeds/Item.visible = true
		pass
		
	if Global.waterWalkingSpell:
		$Water/Item.visible = true
		pass
	if Global.waterElemental:
		$WaterElemental/Item.visible = true
		pass
	if Global.greenGoo:
		$GreenGoo/Item.visible = true
		pass
		
	if Global.fireballSpell:
		$FireBall/Item.visible = true
		pass
	if Global.hellPepper:
		$HellPepper/Item.visible = true
		pass
	if Global.matchbox:
		$Matchbox/Item.visible = true
		pass
	$Label.text = str(Global.foundEvidence) + " evidence found"
	pass
