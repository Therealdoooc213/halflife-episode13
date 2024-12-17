/datum/crafting_recipe/viscerator
	name = "Viscerator"
	result = /obj/item/grenade/spawnergrenade/manhacks
	time = 5 SECONDS
	reqs = list(
		/obj/item/machinepiece/viscerator = 1,
		/obj/item/circuitmaterial = 1,
		/obj/item/stack/cable_coil = 5
	)
	category = CAT_ROBOT
	structures = list(/obj/structure/table/halflife/no_smooth/large/crafting/tinkerbench = CRAFTING_STRUCTURE_USE)

/datum/crafting_recipe/cityscanner
	name = "City Scanner"
	result = /obj/effect/mob_spawn/ghost_role/cityscanner
	time = 5 SECONDS
	reqs = list(
		/obj/item/machinepiece/scanner = 1,
		/obj/item/circuitmaterial = 2,
		/obj/item/stack/cable_coil = 5
	)
	category = CAT_ROBOT
	structures = list(/obj/structure/table/halflife/no_smooth/large/crafting/tinkerbench = CRAFTING_STRUCTURE_USE)
