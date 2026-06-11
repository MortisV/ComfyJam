var _menuItens = elementsArray, _count = array_length(_menuItens);
for(var i = 0; i < _count; i++){
    var _currentItem = menuElements[$ _menuItens[i]];
    var _currentItemSprite = _currentItem[$ "sprite"] ?? -1
    
    if(_currentItemSprite != -1){
        var _currentItemX = _currentItem[$ "x"] ?? 0
        var _currentItemY = _currentItem[$ "y"] ?? 0
        var _currentItemFrame = _currentItem[$ "frame"] ?? 0
        var _currentItemXscale = _currentItem[$ "xscale"] ?? 1;
        var _currentItemYscale = _currentItem[$ "yscale"] ?? 1;
        var _blend = _currentItem[$ "blend"] ?? c_white;
        var _yy = _currentItemY;
        if(i > 0) _yy = _currentItemY + addOffset
        
        
        draw_sprite_ext(_currentItemSprite,_currentItemFrame,_currentItemX,_yy,_currentItemXscale,_currentItemYscale,0,_blend,1);
    }
}

if(drawOptions){
    //var _string = "Jogar";
    for(var i = 0; i < array_length(menuOptions); i++){
        var _string = menuOptions[i];
        if(i == selectedOption) _string = ">" + _string;
        
        var _xx = menuElements.tela.x + sprite_get_width(menuElements.tela.sprite) * .5 - string_width(_string) * .5;
        var _yy = menuElements.tela.y + 6 + 14 * i;
        draw_text(_xx,_yy,_string);
    }
}