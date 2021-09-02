extends Node2D





# PROBS
var muz = preload("res://World/Probs/muz.png")
var karpuz = preload("res://World/Probs/karpuz.png")
var hamburger = preload("res://World/Probs/hamburger.png")


func _ready():
	drop_prob()
	
	pass



var RNG = RandomNumberGenerator.new()

func drop_prob():
	RNG.randomize()
	var pos_x = RNG.randi_range(50,1000)
	var muz_p = RigidBody2D.new()
	var coll = CollisionShape2D.new()
	var sprite = Sprite.new()
	var vs = VisibilityNotifier2D.new()
	vs.connect("screen_exited",self,"_ekrandan_cikti")
	sprite.texture = muz
	sprite.scale = Vector2(0.01,0.01)
	
	
	muz_p.add_child(coll)
	muz_p.add_child(vs)
	muz_p.add_child(sprite)
	muz_p.transform.origin = Vector2(pos_x,0)
	add_child(muz_p)
	pass

