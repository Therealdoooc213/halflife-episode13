/obj/item/circuitmaterial
	name = "Circuit Chip"
	desc = "A circuit chip for building electronics with."
	custom_price = 5
	inhand_icon_state = "electronic"
	icon = 'icons/obj/devices/circuitry_n_data.dmi'
	icon_state = "component"
	obj_flags = CONDUCTS_ELECTRICITY
	w_class = WEIGHT_CLASS_SMALL
	grind_results = list(/datum/reagent/iron = 10, /datum/reagent/silicon = 10)

/obj/item/circuitmaterial/motherboard
	name = "Motherboard"
	desc = "An important electronic piece for machines."
	custom_price = 10
	icon_state = "boris"

/obj/item/machinepiece
	icon = 'hl13/icons/obj/machines.dmi'

/obj/item/machinepiece/viscerator
	name = "Viscerator Frame"
	desc = "A framework for a Viscerator bot. You'll have to craft it into a functioning one."
	icon_state = "viscerator"
	w_class = WEIGHT_CLASS_SMALL
	//materials = list(/datum/material/iron=4000, /datum/material/glass=4000)

/obj/item/machinepiece/scanner
	name = "Scanner Frame"
	desc = "A framework for a Scanner bot. You'll have to craft it into a functioning one."
	icon_state = "cityscannerframe"
	w_class = WEIGHT_CLASS_NORMAL
	//materials = list(/datum/material/iron=12000, /datum/material/glass=4000)

/obj/item/machinepiece/multifunctiontool
	name = "Broken Multifunction Tool"
	desc = "A broken frame for a multifunction electrical tool. You may be able to craft it into a functioning one."
	icon_state = "alyxtool"
