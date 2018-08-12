var load_id = obj_forklift.load;

//one of the crates is attached to the forklift
if(load_id == id || load_id == other.id){
	speed = 2;
	other.direction = direction;
	obj_forklift.speed = 0;
	
	//crates are on top of eachother and 
	//not attached to the forklift
} else {
	motion_add(point_direction(other.x, other.y, x, y), 2);
	
	if (x == other.x and y == other.y) {
		x += 1;	
	} else {
		x -= 1;	
	}
}
