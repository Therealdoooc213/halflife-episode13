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

/obj/modular_map_root/citynorth
	config_file = "strings/modular_maps/sewercity.toml"
	key = "citynorth";
	name = "citynorth"

/obj/modular_map_root/citysouth
	config_file = "strings/modular_maps/sewercity.toml"
	key = "citysouth";
	name = "citysouth"

/obj/modular_map_root/sewerleft
	config_file = "strings/modular_maps/sewercity.toml"
	key = "sewerleft";
	name = "sewerleft"

/obj/modular_map_root/sewerright
	config_file = "strings/modular_maps/sewercity.toml"
	key = "sewerright";
	name = "sewerright"
