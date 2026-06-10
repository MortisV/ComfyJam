depth = -y;

var area = instance_place(x, y, oAreaMetais)

var _keyRight = keyboard_check(ord("D"));
var _keyLeft = keyboard_check(ord("A"));
var _keyDown = keyboard_check(ord("S"));
var _keyUp = keyboard_check(ord("W"));

var _hmove = (_keyRight - _keyLeft);
var _vmove = (_keyDown - _keyUp);

hspd = _hmove * spd;
vspd = _vmove * spd;

move_and_collide(hspd,vspd,[oWall],,,,spd,spd);

lookDirection = round((point_direction(x,y,mouse_x,mouse_y) / 90));

switch(lookDirection){
    default: break;
    case 0: currentDirection = "right"; break;
    case 1: currentDirection = "top"; break
    case 2: currentDirection = "left"; break;
    case 3: currentDirection = "down"; break
}

x = round(x); y = round(y);

if(hspd != 0 || vspd != 0){
    entity.setEntityZ(wave(0,-2.5,.2,0,0));
}


entity.entityZ = lerp(entity.entityZ,0,.1);
entity.drawInfo.entityAngle= lerp(entity.drawInfo.entityAngle,0,.1);

entity.resetEntityScale();

currentInfo = spriteDictionary[$ currentAction][$ currentDirection]
sprite_index = currentInfo.sprite;

//collisão com a area de procura

if (area != noone)
{
    if(!procurando)
	{
		procurando = true
		
		tempo_procurando = irandom_range(game_get_speed(gamespeed_fps) * 2, game_get_speed(gamespeed_fps) * 8)
	}
} else {
	procurando = false
}

if(procurando)
{
	tempo_procurando--
	
	if tempo_procurando <= 0
	{
		add(oInventario.Inventario, global.ITEM_CHAVE, 1)
		
		tempo_procurando = irandom_range(game_get_speed(gamespeed_fps) * 2, game_get_speed(gamespeed_fps) * 8)
	}
	
	show_debug_message(tempo_procurando)
}
