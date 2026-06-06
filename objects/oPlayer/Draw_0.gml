var _onTop = (mouse_y > y),_detectorDir = point_direction(x,y,mouse_x,mouse_y)

if(_onTop == false) entity.drawEntityCustom(sDetector,x,y - 16,{
    angle : _detectorDir,
})

entity.drawEntity();

if(_onTop) entity.drawEntityCustom(sDetector,x,y,{
    angle : _detectorDir,
})