colorBrighter = $9AC069;
colorDarker = $32401F;

addOffset = 180;

menuElements = {
    background : 
    {
        priority : 0,
        sprite : Background,
        x : 0,
        y : 0,
        frame : 0,
    },
    base : {
        priority : 2,
        sprite : Base_menu,
        x : 79,
        y : 5,
        frame : 0,
    },
    detector : {
        sprite : sPartelDetector,
        x : 66,
        y : -7,
        xscale : 1.25,
        yscale : 1.25,
        priority : 1,
        frame : 0,
    },
    setaleft : {
        priority : 3,
        sprite : Ceta,
        x : 150,
        y : 130, 
        frame : 0,
        xscale : -1,
    },
    setaright : {
        priority : 3,
        sprite : Ceta,
        x : 172,
        y : 130,
        frame : 0,
    },
    botaoleft : {
        priority : 3,
        sprite : Sprite_Sheet_Botaum,
        x : 107,
        y : 102,
        frame : 0,
    },
    botaoright : {
        priority : 3,
        sprite : Sprite_Sheet_Botaum,
        x : 190,
        y : 102,
        frame : 0,
    },
    tela : {
        priority : 3,
        sprite : Tela_menu,
        x : 107,
        y : 35,
        frame : 0,
        blend : colorDarker,
        targetblend : colorDarker,
    },
};

drawOptions = false;


elementsArray = struct_get_names(menuElements);
array_sort(elementsArray,function(_a,_b){
    var _aa = menuElements[$ _a], _bb = menuElements[$ _b];
    return _aa.priority - _bb.priority;
});

menuOptions = ["Jogar","Creditos","Sair"];
selectedOption = 0;