GLOBAL_LIST_EMPTY(chosen_station_templates)

#define EMPTY_SPAWN "empty_spawn"

//Care packages for rebels are dropped off here when sociostability reaches certain points.
/obj/effect/landmark/carepackage
	name = "carepackagespawn"
	//icon_state = "carp_spawn"

//Where random event destabilizers can spawn
/obj/effect/landmark/destabilizer
	name = "destabilizerspawn"
	//icon_state = "carp_spawn"

// START LANDMARKS FOLLOW. Don't change the names unless
// you are refactoring shitty landmark code.
/obj/effect/landmark/start/citizen
	name = "Citizen"
	icon_state = "Assistant"

/obj/effect/landmark/start/citizen/override
	jobspawn_override = TRUE
	delete_after_roundstart = FALSE

/obj/effect/landmark/start/civil_protection_officer
	name = "Civil Protection Officer"
	icon_state = "Security Officer"

/obj/effect/landmark/start/divisional_lead
	name = "Divisional Lead"
	icon_state = "Head of Security"

/obj/effect/landmark/start/overseer
	name = "Overseer"
	icon_state = "Warden"

/obj/effect/landmark/start/city_administrator
	name = "District Administrator"
	icon_state = "Captain"

/obj/effect/landmark/start/labor_lead
	name = "Labor Lead"
	icon_state = "Head of Personnel"

/obj/effect/landmark/start/foreman
	name = "Union Foreman"
	icon_state = "Quartermaster"

/obj/effect/landmark/start/engineer
	name = "Union Engineer"
	icon_state = "Station Engineer"

/obj/effect/landmark/start/cleanup_technician
	name = "Cleanup Technician"
	icon_state = "Station Engineer"

/obj/effect/landmark/start/shaft_miner
	name = "Shaft Miner"
	icon_state = "Shaft Miner"

/obj/effect/landmark/start/vortigaunt_slave
	name = "Vortigaunt Slave"
	icon_state = "Head of Personnel"

/obj/effect/landmark/start/medical_doctor
	name = "Union Doctor"
	icon_state = "Medical Doctor"

/obj/effect/landmark/start/scientist
	name = "Union Scientist"
	icon_state = "Scientist"

/obj/effect/landmark/start/bartender
	name = "Bartender"
	icon_state = "Bartender"

/obj/effect/landmark/start/cook
	name = "Cook"
	icon_state = "Cook"

/obj/effect/landmark/start/botanist
	name = "Botanist"
	icon_state = "Botanist"

/obj/effect/landmark/start/clerk
	name = "Clerk"
	icon_state = "Clerk"


/obj/effect/landmark/stationroom
	var/list/template_names = list()
	/// Whether or not we can choose templates that have already been chosen
	var/unique = FALSE

/obj/effect/landmark/stationroom/Initialize(mapload)
	. = ..()
	GLOB.stationroom_landmarks += src

/obj/effect/landmark/stationroom/Destroy()
	GLOB.stationroom_landmarks -= src
	return ..()

/obj/effect/landmark/stationroom/proc/load(template_name)
	var/turf/T = get_turf(src)
	if(!T)
		return FALSE
	if(!template_name)
		for(var/t in template_names)
			if(!SSmapping.station_room_templates[t] && t != EMPTY_SPAWN)
				stack_trace("Station room spawner placed at ([T.x], [T.y], [T.z]) has invalid ruin name of \"[t]\" in its list")
				template_names -= t
		template_name = choose()
	if(!template_name)
		stack_trace("Station room spawner [src] at ([T.x], [T.y], [T.z]) has a null template.")
	if(!template_name || template_name == EMPTY_SPAWN)
		GLOB.stationroom_landmarks -= src
		qdel(src)
		return FALSE
	GLOB.chosen_station_templates += template_name
	var/datum/map_template/template = SSmapping.station_room_templates[template_name]
	if(!template)
		return FALSE
	testing("Ruin \"[template_name]\" placed at ([T.x], [T.y], [T.z])")
	template.load(T, centered = FALSE)
	template.loaded++
	GLOB.stationroom_landmarks -= src
	qdel(src)
	return TRUE

// Proc to allow you to add conditions for choosing templates, instead of just randomly picking from the template list.
// Examples where this would be useful, would be choosing certain templates depending on conditions such as holidays,
// Or co-dependent templates, such as having a template for the core and one for the satelite, and swapping AI and comms.git
/obj/effect/landmark/stationroom/proc/choose()
	var/list/current_templates = template_names
	if(unique)
		for(var/i in GLOB.chosen_station_templates)
			template_names -= i
		if(!template_names.len)
			stack_trace("Station room spawner (type: [type]) has run out of ruins, unique will be ignored")
			template_names = current_templates
	var/chosen_template = pick_weight(template_names)
	if(unique && chosen_template == EMPTY_SPAWN)
		template_names -= EMPTY_SPAWN
		if(!template_names.len)
			stack_trace("Station room spawner (type: [type]) has run out of ruins from an EMPTY_SPAWN, unique will be ignored")
			template_names = current_templates
	return chosen_template

/obj/effect/landmark/stationroom/sewer/
	unique = TRUE

/obj/effect/landmark/stationroom/sewer/leftentrance/tenxten
	template_names = list("sewer left_ten_box", "sewer left_ten_zombie1", "sewer left_ten_zombine1", "sewer left_ten_medical", "sewer left_ten_locked", "sewer left_ten_mining", "sewer left_ten_forcefield", "sewer left_ten_radiation", "sewer left_ten_poisoncrab", "sewer left_ten_weaponcraft", "sewer left_ten_kitchen")

/obj/effect/landmark/stationroom/sewer/rightentrance/tenxten
	template_names = list("sewer right_ten_box", "sewer right_ten_flooded", "sewer right_ten_headcrabs", "sewer right_ten_headcrabs2", "sewer right_ten_infested1", "sewer right_ten_infested2", "sewer right_ten_doors", "sewer right_ten_factory", "sewer right_ten_armory", "sewer right_ten_fishing")

/obj/effect/landmark/stationroom/city
	unique = TRUE

/obj/effect/landmark/stationroom/city/southentrance/tenxten
	template_names = list("city south_ten_gambling", "city south_ten_lockedapartment", "city south_ten_oldapartment", "city south_ten_laundromat")

/obj/effect/landmark/stationroom/city/northentrance/tenxten
	template_names = list("city north_ten_niceapartment", "city north_ten_store")

#undef EMPTY_SPAWN
