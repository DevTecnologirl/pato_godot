extends CharacterBody2D
var grav = 10
var speed = 300

func _process(delta): #Executa o código 60x segundos
	#GRAVIDADE DO PERSONAGEM
	if !is_on_floor(): #condição que verifica SE o personagem NÃO=! estiver no chão
		velocity.y += grav #variavel que controla a força no exo y
	
	#MOVER PERSONAGEM eixo X
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
			#efeito de virar face FLIP_H - DIREITA
		$Duck.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		#efeito de virar face FLIP_H - ESQUERDA
		$Duck.flip_h = true
	else: 
		velocity.x = 0 		
	
	#Fazer efeito de PULO
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= 300
	move_and_slide() #comando que faz o movimento
