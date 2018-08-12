with (obj_crate) {
	if place_meeting(x,y,obj_dropoff_zone_north) {
		score += 10;
		
		
		if(obj_forklift.load == id){
			obj_forklift.load = noone;
			obj_forklift.hasLoad = false;
		}
		instance_destroy();
	}
}