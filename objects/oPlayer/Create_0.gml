spd = 1;
hspd = 0;
vspd = 0;

procurando = false;
tempo_procurando = 0;


spriteDictionary = {
    iddle : {
        top : { sprite : sPlayer_Up, detecPos : {ofx : 0, ofy : -16}, infront : false, },
        down : { sprite : sPlayer_Down, detecPos : {ofx : 0, ofy : 0}, infront : true, },
        right : { sprite : sPlayer_Right, detecPos : {ofx : 8, ofy : -8}, infront : true, },
        left : { sprite : sPlayer_Left, detecPos : {ofx : -8, ofy : -8}, infront: true },
    },
    walk : {
        top : { sprite : sPlayer_Up, detecPos : {ofx : 0, ofy : -16}, infront : false, },
        down : { sprite : sPlayer_Down, detecPos : {ofx : 0, ofy : 0}, infront : true, },
        right : { sprite : sPlayer_Right, detecPos : {ofx : 8, ofy : -8}, infront : true, },
        left : { sprite : sPlayer_Left, detecPos : {ofx : -8, ofy : -8}, infront: true },
    }
}

currentAction = "iddle";
currentDirection = "top";

entity = new entityDefiner(id);
lookDirection = 0;
currentInfo = spriteDictionary[$ currentAction][$ currentDirection];

var _dbgView = dbg_view("Player",true);
var _actionRef = ref_create(self,"currentAction");
var _directionRef = ref_create(self,"currentDirection");
dbg_text($"Action: ");
dbg_same_line();
dbg_text(_actionRef);

dbg_text($"Direction: ");
dbg_same_line();
dbg_text(_directionRef);

show_debug_overlay(false);