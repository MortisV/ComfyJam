spd = 1;
hspd = 0;
vspd = 0;

spriteDictionary = {
    iddle : {
        top : sPlayer_Up,
        down : sPlayer,
        right : sPlayer_Right,
        left : sPlayer_Left,
    },
    walk : {
        top : sPlayer_Up,
        down : sPlayer,
        right : sPlayer,
        left : sPlayer,
    }
}

currentAction = "iddle";
currentDirection = "top";

entity = new entityDefiner(id);