/// @description Insert description here
// You can write your code in this editor

inputLeft = keyboard_check(vk_left);
inputRight = keyboard_check(vk_right);
inputUp = keyboard_check(vk_up);
inputDown = keyboard_check(vk_down);
inputSprint = keyboard_check(vk_shift)
inputWalk = keyboard_check(vk_control)


moveX = 0;
moveY = 0;

COLLISION = false;

if(inputSprint || inputWalk){

	moveSpeed = abs((inputWalk * walkSpeed)- (inputSprint * runSpeed));
}else{
	moveSpeed = 2;	
}

	moveX = (inputRight - inputLeft) * moveSpeed;
	moveY = (inputDown - inputUp) * moveSpeed;


//Horizontal check
if(moveX !=0 && place_meeting(x + moveX,y, objCollision)){
	while(abs(moveX)){
	if(!place_meeting(x+sign(moveX),y,objCollision))
	{
		x += sign(moveX);
	}
	else{
		break;
	}
	}
	
	moveX =0;
	
}

//vertical
if(moveY !=0 && place_meeting(x ,y + moveY, objCollision)){
	repeat(abs(moveY)){
	if(!place_meeting(x,y+sign(moveY),objCollision))
	{
		y += sign(moveY);
	}
	else{
		break;
	}
	}
	
	moveY =0;
	
}



x += moveX;
y += moveY;


	