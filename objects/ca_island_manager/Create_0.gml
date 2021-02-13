/// @description CA Island Manager


spawn_island_squares = function() {
	
	instance_destroy(obj_island_square);
	
	var _spacing = sprite_get_width(spr_square);
	
	for (var col = 0; col < my_map.width; col += 1) {
		for (var row = 0; row < my_map.height; row += 1) {
			with(instance_create_layer(col * _spacing, row * _spacing, layer, obj_island_square)) {
				set_color(other.my_map.island_map[col][row]);
			}
		}
	}

}


randomize();
my_map = new cellular_automata_island_map(60, 60, 0.4);
spawn_island_squares();


