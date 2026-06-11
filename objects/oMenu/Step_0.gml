var _variation= keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
if(_variation != 0){
    selectedOption += _variation;
    if(selectedOption < 0) selectedOption = array_length(menuOptions) - 1; else if(selectedOption > array_length(menuOptions) - 1) selectedOption = 0;
}

if(keyboard_check_pressed(ord("E"))){
    switch(selectedOption){
        default: break;
        case 0: room_goto(Room1); break;
    }
}

addOffset = lerp(addOffset,0,.05);
menuElements.tela.blend = merge_colour(menuElements.tela.blend,menuElements.tela.targetblend,.025);
if(addOffset <= .1){
    menuElements.tela.targetblend = colorBrighter;
    drawOptions = true;
}