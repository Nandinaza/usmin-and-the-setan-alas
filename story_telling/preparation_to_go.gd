extends Node2D

onready var orang = $orang
onready var label = $label
var progress = -1
var percakapan = [
	"duh gabut banget hari ini",
	"aha, aku punya ide",
	"bagaimana kalau hari ini aku mengajak",
	"Teman-temanku untuk pergi mendaki ke gunung slamet",
	"pasti akan sangat menyenangkan",
	"***berjalan keluar",
	"halo guys bagaimana jika malam ini kita pergi ke gunung slamet",
	"ayolah gasken",
	"baguslah kalau begitu",
	"cus guys ayo kita gasken",
	"btw sorry ya kalau potongan gambar gw nggak rapi ",
	"yang bikin game males motong gambar soalnya",
	"semua ikut semua"
]

func _ready():
	pass

func _on_TouchScreenButton_pressed():
	progress += 1
	set_images("As")
	label.text = percakapan[progress]
	if progress > 10:
		get_tree().change_scene("res://scene_action/labirin.tscn")

func set_images(name):
	if(name == "As"):
		var ter = load("res://assets/dialog/dialog_usmin.png")
		orang.set_texture(ter)
	else:
		print("noooo")

