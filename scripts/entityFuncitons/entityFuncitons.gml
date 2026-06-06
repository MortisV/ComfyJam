function entityDefiner(id) constructor{
    entityID = id;
    drawInfo = {
        entityScaleX : 1,
        entityScaleY : 1,
        entityFaceX : 1,
        entityFaceY : 1,
        entityAngle : 0,
        entityDefaultScaleX : 1,
        entityDefaultScaleY : 1,
        entityBlend : c_white,
        entityAlpha : 1,
    }
    
    entityZ = 0;
    entityZSpd = 0;
    entityZFloor = 0;
    entityFalling = false;
    entityGrv = .3;
    
    static setEntityZ = function(_z){
        entityZ = _z;
    }
    
    static setEntityFalling = function(_falling){
        entityFalling = _falling;
    }
    
    static setEntityZSpd = function(_zspd){
        entityZSpd = _zspd;
    }
    
    static resetEntityZ = function(){
        entityZSpd += entityGrv;
        entityZ += entityZSpd;
        
        if(entityZ > entityZFloor){
            entityZ = 0;
            entityZSpd = 0;
            if(entityFalling){
                entityFalling = false;
                setEntityScale(1.2,.7);
            }
        }
    }
    
    static setEntityScale = function(_scaleX,_scaleY){
        drawInfo.entityScaleX = _scaleX;
        drawInfo.entityScaleY = _scaleY;
    }
    
    static resetEntityScale = function(){
        with(drawInfo){
            entityScaleX = lerp(entityScaleX,entityDefaultScaleX,.1);
            entityScaleY = lerp(entityScaleY,entityDefaultScaleY,.1);
        }
    }
    
    static drawEntity = function(){
        var _info = drawInfo, _z = entityZ;
        
        with(entityID){
            var _finalScaleX = _info.entityScaleX * _info.entityFaceX, _finalScaleY = _info.entityScaleY * _info.entityFaceY;
            var _finalY = y + _z;
            
            draw_sprite_ext(sprite_index,image_index,x,_finalY,_finalScaleX,_finalScaleY,_info.entityAngle,_info.entityBlend,_info.entityAlpha)
            
        }
    }
    
    static drawEntityCustom = function(_sprite,_x,_y,_drawInfo){
        var _scaleX = _drawInfo[$ "sx"] ?? drawInfo.entityScaleX * drawInfo.entityFaceX;
        var _scaleY = _drawInfo[$ "sy"] ?? drawInfo.entityScaleY * drawInfo.entityFaceY;
        var _angle = _drawInfo[$ "angle"] ?? drawInfo.entityAngle;
        var _blend = _drawInfo[$ "blend"] ?? drawInfo.entityBlend;
        var _alpha = _drawInfo[$ "alpha"] ?? drawInfo.entityAlpha;
        
        var _finalY = _y + entityZ;
        var _frame = 0;
        
        draw_sprite_ext(_sprite,_frame,_x,_finalY,_scaleX,_scaleY,_angle,_blend,_alpha);
    }
    
}