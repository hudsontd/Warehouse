var load_id = obj_forklift.load;

//one of the crates is attached to the forklift
if(load_id == id || load_id == other.id){
	speed = 2;
	other.direction = direction;
	
	//crates are on top of eachother and 
	//not attached to the forklift
} else {
	speed = 2;
	other.direction = -direction; 
}
