var _keyRight = keyboard_check(ord("D"));
var _keyLeft = keyboard_check(ord("A"));
var _keyDown = keyboard_check(ord("S"));
var _keyUp = keyboard_check(ord("W"));

var _hmove = (_keyRight - _keyLeft);
var _vmove = (_keyDown - _keyUp);

hspd = _hmove * spd;
vspd = _vmove * spd;

move_and_collide(hspd,vspd,[oWall],,,,spd,spd);

var _lookDirection = (point_direction(x,y,mouse_x,mouse_y) div 90);

switch(_lookDirection){
    default: break;
    case 0: currentDirection = "right"; break;
    case 1: currentDirection = "top"; break
    case 2: currentDirection = "left"; break;
    case 3: currentDirection = "down"; break
}

x = round(x); y = round(y);



if(keyboard_check_pressed(vk_space)){
    entity.setEntityScale(.7,1.2);
    entity.setEntityFalling(true);
    entity.setEntityZSpd(-3);
}

entity.resetEntityScale();
entity.resetEntityZ();


sprite_index = spriteDictionary[$ currentAction][$ currentDirection];