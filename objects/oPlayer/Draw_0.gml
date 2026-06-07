entity.drawEntityShadow();

var _detectorDir = point_direction(x,y,mouse_x,mouse_y)

if(currentInfo.infront == false) entity.drawEntityCustom(sDetector,x + currentInfo.detecPos.ofx,y + currentInfo.detecPos.ofy,{
    angle : _detectorDir,
})

entity.drawEntity();

if(currentInfo.infront) entity.drawEntityCustom(sDetector,x + currentInfo.detecPos.ofx,y + currentInfo.detecPos.ofy,{
    angle : _detectorDir,
})