function runControls(){
		if keyboard_check(vk_right){
			image_index = 1;
			direction = 90;
			
			x += runSpeed
			
			if place_meeting(x + (runSpeed/5), y, obj_platforms){
				x -= runSpeed;
			}
		}
		
		if keyboard_check(vk_left){
			image_index = 0;
			direction = 90;
			
			x -= runSpeed
			
			if place_meeting(x - (runSpeed/5), y, obj_platforms){
				x += runSpeed;
			}
		}
}

function simGravity(){
	
		y -= fallSpeed;
			
		if place_meeting(x, y - fallSpeed/4, obj_platforms){
		
			
			if (fallSpeed < 0){
				reverseStep = -0.5;
			}
			else {
				reverseStep = 0.5
			}
			
			
			while (place_meeting(x, y - reverseStep, obj_platforms)){
				y += reverseStep;
			}
			
			//if !keyboard_check(vk_up){
			fallSpeed = 0;
			midair = true;
			//}
		
		}
		else{
			fallSpeed += gravityVar;
			midair = false;
		}
		
}
		
function jumpControl(){
		if keyboard_check(vk_up) and !midair{
			//y += 1;
			if place_meeting(x, y+1.5, obj_platforms) and !place_meeting(x, y - 1.5, obj_platforms){
				
				fallSpeed = takeOffSpeed;
				
				y -= takeOffSpeed;
				
			}
			
			midair = true; 
			//y += 1;
		}
}

function fallenOff(){
		if (y > 720) {game_end()};
}

runControls();
jumpControl();
simGravity();
fallenOff();