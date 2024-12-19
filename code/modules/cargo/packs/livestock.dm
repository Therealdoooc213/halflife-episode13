/datum/supply_pack/critter
	group = "Livestock"
	crate_type = /obj/structure/closet/crate/critter

/datum/supply_pack/critter/monkey
	name = "Monkey Cube Crate"
	desc = "Stop monkeying around! Contains seven monkey cubes. Just add water!"
	cost = CARGO_CRATE_VALUE * 4
	contains = list (/obj/item/storage/box/monkeycubes)
	crate_type = /obj/structure/closet/crate
	crate_name = "monkey cube crate"

/datum/supply_pack/critter/garden_gnome
	name = "Garden Gnome Crate"
	desc = "Collect them all for your garden. Comes with three!"
	hidden = TRUE
	cost = CARGO_CRATE_VALUE * 15
	contains = list(/mob/living/basic/garden_gnome)
	crate_name = "garden gnome crate"
	discountable = SUPPLY_PACK_RARE_DISCOUNTABLE

/datum/supply_pack/critter/garden_gnome/generate()
	. = ..()
	for(var/i in 1 to 2)
		new /mob/living/basic/garden_gnome(.)

/datum/supply_pack/critter/fish
	crate_type = /obj/structure/closet/crate

/datum/supply_pack/critter/fish/aquarium_fish
	name = "Aquarium Fish Case"
	desc = "An aquarium fish bundle handpicked by monkeys from our collection. Contains two random fish."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/item/storage/fish_case/random = 2)
	crate_name = "aquarium fish crate"

/datum/supply_pack/critter/fish/freshwater_fish
	name = "Freshwater Fish Case"
	desc = "Aquarium fish that have had most of their mud cleaned off."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/item/storage/fish_case/random/freshwater = 2)
	crate_name = "freshwater fish crate"

/datum/supply_pack/critter/fish/saltwater_fish
	name = "Saltwater Fish Case"
	desc = "Aquarium fish that fill the room with the smell of salt."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/item/storage/fish_case/random/saltwater = 2)
	crate_name = "saltwater fish crate"
