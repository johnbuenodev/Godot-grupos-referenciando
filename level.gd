extends Node2D

#vai ler a variavel quando for iniciado on ready
@onready var warrior_var: Sprite2D = get_node("warrior")
@onready var goblin_var: Sprite2D = get_node("goblin")
@onready var mage_var: Sprite2D = get_node("mage")

#primeiro e segunda forma de acessar a textura q é a outra spritD2 dentro da outra
#@onready var warrior_texture: Sprite2D = get_node("warrior/Texture")
@onready var warrior_texture: Sprite2D = warrior_var.get_node("Texture")
# Called when the node enters the scene tree for the first time.
func _ready():
	print(goblin_var.name)
	print(mage_var.name)
	#quando carregado vai ter acesso ao warrior variavel
	print(warrior_var.name)
	print(warrior_var.frame_coords)
	warrior_var.move_local_x(375.0, 1)
	print(warrior_var.get_transform())
	print(warrior_texture.name)
	#Obtendo os nos com os grupo enemy
	#print(get_tree().get_nodes_in_group("enemy"))
	for enemy in get_tree().get_nodes_in_group("enemy"):
		print(enemy.name)
		print(enemy.get_groups())
	#obtendo os nos com o grupo player
	#print(get_tree().get_nodes_in_group("player"))
	for player in get_tree().get_nodes_in_group("player"):
		print(player.name)
	#referenciando objetos e acessando atraves do GDSCRIPT
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
