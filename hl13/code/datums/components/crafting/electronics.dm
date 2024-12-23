/datum/crafting_recipe/handradio
	name = "Handheld Radio"
	result = /obj/item/radio/off/halflife
	reqs = list(/obj/item/stack/sheet/iron = 2,
				/obj/item/circuitmaterial = 1,
				/obj/item/stack/cable_coil = 3)
	time = 4 SECONDS
	category = CAT_EQUIPMENT
	crafting_interface = CRAFTING_BENCH_ELECTRIC

/datum/crafting_recipe/flashlight
	name = "Flashlight"
	result = /obj/item/flashlight
	reqs = list(/obj/item/stack/sheet/iron = 1,
				/obj/item/circuitmaterial = 1,
				/obj/item/light/bulb = 1,
				/obj/item/stack/cable_coil = 2)
	time = 4 SECONDS
	category = CAT_EQUIPMENT
	crafting_interface = CRAFTING_BENCH_ELECTRIC

/datum/crafting_recipe/maglite
	name = "Maglite"
	result = /obj/item/flashlight/seclite
	reqs = list(/obj/item/stack/sheet/iron = 2,
				/obj/item/circuitmaterial/advanced = 1,
				/obj/item/light/bulb = 1,
				/obj/item/stack/cable_coil = 2)
	time = 4 SECONDS
	category = CAT_EQUIPMENT
	crafting_interface = CRAFTING_BENCH_ELECTRIC
