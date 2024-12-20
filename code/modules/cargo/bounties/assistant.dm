/datum/bounty/item/assistant/statue
	name = "Statue"
	description = "Eastwatch would like to commision an artsy statue for their lobby. Ship one out, when possible."
	reward = CARGO_CRATE_VALUE * 4
	wanted_types = list(/obj/structure/statue = TRUE)

/datum/bounty/item/assistant/dead_mice
	name = "Dead Mice"
	description = "We are looking into how Mice can still survive our treatments, and want to examine a few bodies."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 3
	wanted_types = list(/obj/item/food/deadmouse = TRUE)

/datum/bounty/item/assistant/poppy
	name = "Poppies"
	description = "Poppy byproducts are increasingly garnering our interest, ship us some."
	reward = CARGO_CRATE_VALUE * 2
	required_count = 3
	wanted_types = list(/obj/item/food/grown/poppy = TRUE)
	include_subtypes = FALSE

/datum/bounty/item/assistant/potted_plants
	name = "Potted Plants"
	description = "Potted plants are shown to improve work efficiency of citizens, ship any spare ones."
	reward = CARGO_CRATE_VALUE * 3
	required_count = 5
	wanted_types = list(/obj/item/kirbyplants = TRUE)

/datum/bounty/item/assistant/ied
	name = "IED"
	description = "Nova Prospekt is undergoing personnel training. Ship a handful of IEDs to serve as a training tools."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 3
	wanted_types = list(/obj/item/grenade/iedcasing = TRUE)

/datum/bounty/item/assistant/paper_bin
	name = "Paper Bins"
	description = "City 14's accounting division is all out of paper. We need a new shipment immediately."
	reward = CARGO_CRATE_VALUE * 5
	required_count = 5
	wanted_types = list(/obj/item/paper_bin = TRUE)

/datum/bounty/item/assistant/pens
	name = "Pens"
	description = "Eastwatch District exhausted all their pen ink sending you messages, and require a new shipment."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 10
	include_subtypes = FALSE
	wanted_types = list(/obj/item/pen = TRUE)

/datum/bounty/item/assistant/water_tank
	name = "Water Tank"
	description = "Clean water is always a useful export."
	reward = CARGO_CRATE_VALUE * 5
	wanted_types = list(/obj/structure/reagent_dispensers/watertank = TRUE)

/datum/bounty/item/assistant/improvised_shells
	name = "Junk Shells"
	description = "Our assistant militia has chewed through all our iron supplies. To stop them making bullets out of station property, we need junk shells, pronto."
	reward = CARGO_CRATE_VALUE * 4
	required_count = 5
	wanted_types = list(/obj/item/ammo_casing/junk = TRUE)

/datum/bounty/item/assistant/xenflesh
	name = "Xen Flesh"
	required_count = 3
	description = "We are looking to examine xenian flesh samples, and require a batch."
	reward = CARGO_CRATE_VALUE * 4
	wanted_types = list(/obj/item/food/meat/slab/xen = TRUE)

/datum/bounty/item/assistant/fish
	name = "Fish"
	description = "We need fish to populate our aquariums with. Fishes that are dead or bought from cargo will only be paid half as much."
	reward = CARGO_CRATE_VALUE * 9.5
	required_count = 4
	wanted_types = list(/obj/item/fish = TRUE, /obj/item/storage/fish_case = TRUE)
	///the penalty for shipping dead/bought fish, which can subtract up to half the reward in total.
	var/shipping_penalty

/datum/bounty/item/assistant/fish/New()
	..()
	shipping_penalty = reward * 0.5 / required_count

/datum/bounty/item/assistant/fish/applies_to(obj/shipped)
	. = ..()
	if(!.)
		return
	var/obj/item/fish/fishie = shipped
	if(istype(shipped, /obj/item/storage/fish_case))
		fishie = locate() in shipped
		if(!fishie || !is_type_in_typecache(fishie, wanted_types))
			return FALSE
	return can_ship_fish(fishie)

/datum/bounty/item/assistant/fish/proc/can_ship_fish(obj/item/fish/fishie)
	return TRUE

/datum/bounty/item/assistant/fish/ship(obj/shipped)
	. = ..()
	if(!.)
		return
	var/obj/item/fish/fishie = shipped
	if(istype(shipped, /obj/item/storage/fish_case))
		fishie = locate() in shipped
	if(fishie.status == FISH_DEAD || HAS_TRAIT(fishie, TRAIT_FISH_FROM_CASE))
		reward -= shipping_penalty

///A subtype of the fish bounty that requires fish with a specific fluid type
/datum/bounty/item/assistant/fish/fluid
	reward = CARGO_CRATE_VALUE * 12
	///The required fluid type of the fish for it to be shipped
	var/fluid_type

/datum/bounty/item/assistant/fish/fluid/New()
	..()
	fluid_type = pick(AQUARIUM_FLUID_FRESHWATER, AQUARIUM_FLUID_SALTWATER, AQUARIUM_FLUID_SULPHWATEVER)
	name = "[fluid_type] Fish"
	description = "We need [LOWER_TEXT(fluid_type)] fish to populate our aquariums with. Fishes that are dead or bought from cargo will only be paid half as much."

/datum/bounty/item/assistant/fish/fluid/can_ship_fish(obj/item/fish/fishie)
	return compatible_fluid_type(fishie.required_fluid_type, fluid_type)
