//Inputs
dirkey = keyboard_check(vk_right)
esqtkey = keyboard_check(vk_left)
cimakey = keyboard_check(vk_up)
baixokey = keyboard_check(vk_down)

//speeds
xspd = (dirkey - esqtkey) * spd
yspd = (baixokey - cimakey) * spd

//move
x += xspd
y += yspd

