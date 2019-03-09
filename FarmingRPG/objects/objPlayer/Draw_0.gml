/// @description Insert description here
// You can write your code in this editor


var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

var xx = x-x_offset;
var yy = y-y_offset;

if(moveX < 0) y_frame = 9;
else if(moveX > 0) y_frame =11;
else if(moveY < 0) y_frame =8;
else if(moveY > 0) y_frame =10;
else {
x_frame = 0;	
}


if(x_frame + (anim_speed/60) < anim_length){
	x_frame += anim_speed/60;
}
else{
x_frame = 1;	
}
//draw character base
draw_sprite_part(spr_base,0,floor(x_frame) * frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);

// draw feet

draw_sprite_part(spr_feet,0,floor(x_frame) * frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
// legs
draw_sprite_part(spr_legs,0,floor(x_frame) * frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
// shirt
draw_sprite_part(spr_torse,0,floor(x_frame) * frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);
// hair
draw_sprite_part(spr_hair,0,floor(x_frame) * frame_size,y_frame * frame_size,frame_size,frame_size,xx,yy);

//Increment frame





//draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);