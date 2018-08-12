// If the forklift collides with walls, push it back in the room.	
motion_add(point_direction(other.x, other.y, x, y), 1);
	
if (x == other.x and y == other.y) {
	x += 1;	
} else {
	x -= 1;	
}