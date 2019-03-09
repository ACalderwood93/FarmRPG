/// @description Insert description here
// You can write your code in this editor

move_cam = keyboard_check(ord("C"));
inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);

if(move_cam){
	
	x += (inputRight - inputLeft) * 6;
	y += (inputDown - inputUp) * 6;
	
}
else{

x= clamp(x,following.x - h_border,following.x + h_border);
y= clamp(y,following.y - v_border,following.y + v_border);

}