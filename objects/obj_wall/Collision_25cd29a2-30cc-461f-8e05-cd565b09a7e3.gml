// If crates collide with walls, push them back in the room.	
motion_add(point_direction(x, y, other.x, other.y), 1);
	
if (x == other.x and y == other.y) {
	x += 1;	
} else {
	x -= 1;	
}