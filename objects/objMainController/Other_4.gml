/// @description Room work

if (room == room1) {
	
	instance_create_depth(0, 0, depth, Constants);
	
	// set up view 0 with camera
	view_enabled = true;
	view_set_visible(0, true);
	view_set_wport(0, display_get_width());
	view_set_hport(0, display_get_height());
	view_set_camera(0, Constants.camera[cam.ID]);
	
	//Resize and center viewport
	window_set_rectangle((display_get_width() - view_wport[0]) * 0.5, 
		(display_get_height() - view_hport[0]) * 0.5, view_wport[0], view_hport[0]);
	surface_resize(application_surface, view_wport[0], view_hport[0]);

	// create tile layers as well as layers for various objects
	var utilLayer = layer_create(100, "utils");
	var instLayer = layer_create(0, "instances");
	Constants.gameLayers[instLayers.UTIL] = utilLayer;
	Constants.gameLayers[instLayers.INST] = instLayer;
}