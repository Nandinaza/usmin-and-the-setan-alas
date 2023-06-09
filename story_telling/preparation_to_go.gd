extends Node2D

onready var orang = $orang
onready var label = $label
onready var background = $background

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
	"semua ikut semua",
	"widih jalannya bagus sekali",
	"jalan Lampung inimah bjir",
	"tenang guys sebentar lagi sampai",
	"***singkat cerita di tengah perjalanan mobil mereka mogok sehingga ",
	"waduh gimana nih",
	"nggak tau nih ",
	"kapan kita bisa lanjut jalan",
	"ya sabar lah ",
	"karena hari sudah malam, bagaimana kalau kita kemah di sini",
	"bagus itu, nggak sampe gunung, Alas(kebun) pun jadilah",
	"*** singkatnya merekapun berubah pikiran dan kemah di situ",
	"malam ini dingin sekali",
	"Min tolong carikan 3 kayu untuk membuat api unggun",
	"baiklah aku akan mencari 3 kayu ",
	"guys, setahu saya disini kita nggak boleh ngomong kasar",
	"soalnya itu pamali",
	"lalu? ",
	"sekedar mengingatkan",
	"oh, tenang saja aku nggak akan berkata kasar kok",
	" "
]

func _ready():
	pass

func _on_TouchScreenButton_pressed():
	progress += 1
	label.text = percakapan[progress]
	match progress :
		6:
			set_images("Nan")
			set_background(3)
		7:
			set_images("Ak")
		8:
			set_images("As")
		9:
			set_images("Us")
		12:
			set_images("Nan")
			set_background(2)
		13:
			set_images("As")
		15:
			set_images("Nan")
		16:
			set_background(4)
		18:
			set_images("Ak")
		19:
			set_images("As")
		20:
			set_images("Nan")
		22:
			set_images("Us")
		23:
			set_background(5)
		24:
			set_images("Nan")
		26:
			set_images("Us")
		27:
			set_images("As")
		29:
			set_images("Ak")
		30:
			set_images("As")
		31:
			set_images("Us")
		
	print(progress)
	if progress > 31:
		get_tree().change_scene("res://scene_action/hutan.tscn")

func set_images(name):
	if(name == "As"):
		var ter = load("res://assets/dialog/dialog_aska.png")
		orang.set_texture(ter)
	elif(name == "Nan"):
		var ter = load("res://assets/dialog/dialog_Nandi.png")
		orang.set_texture(ter)
	elif(name == "Ak"):
		var ter = load("res://assets/dialog/dialog_akbar.png")
		orang.set_texture(ter)
	elif(name == "Us"):
		var ter = load("res://assets/dialog/dialog_usmin.png")
		orang.set_texture(ter)
		
func set_background(nombor):
	if(nombor == 1):
		var bg = load("res://assets/ui/background/indoor_nandi.png")
		background.set_texture(bg)
	elif(nombor == 2):
		var bg = load("res://assets/ui/background/car_travel.png")
		background.set_texture(bg)
	elif(nombor == 3):
		var bg = load("res://assets/ui/background/outdoor_nandi.png")
		background.set_texture(bg)
	elif(nombor == 4):
		var bg = load("res://assets/ui/background/bg2.png")
		background.set_texture(bg)
	elif(nombor == 5):
		var bg = load("res://assets/ui/background/tenda.png")
		background.set_texture(bg)
