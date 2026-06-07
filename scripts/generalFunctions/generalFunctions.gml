function wave(_from,_to,_duration,_offset,_time){
    if _time = 0 _time = current_time;
    var _a4 = (_to - _from) * 0.5;
    return _from + _a4+ sin((((_time * 0.001) + _duration * _offset) / _duration) * (pi*2)) * _a4;    
    
}
