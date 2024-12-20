/datum/bounty/item/chef/birthday_cake
	name = "Birthday Cake"
	description = "The Combine's occupation day celebration is coming up! Ship Overwatch a birthday cake to celebrate!"
	reward = CARGO_CRATE_VALUE * 8
	wanted_types = list(
		/obj/item/food/cake/birthday = TRUE,
		/obj/item/food/cakeslice/birthday = TRUE
	)

/datum/bounty/reagent/chef/soup
	name = "Soup"
	description = "With a recent train derailment of rations, soup is needed as a substitute."

/datum/bounty/reagent/chef/soup/New()
	. = ..()
	required_volume = pick(10, 15, 20, 25)
	wanted_reagent = pick(subtypesof(/datum/reagent/consumable/nutriment/soup))
	reward = CARGO_CRATE_VALUE * round(required_volume / 3)
	// In the future there could be tiers of soup bounty corresponding to soup difficulty
	// (IE, stew is harder to make than tomato soup, so it should reward more)
	description += " Send us [required_volume] units of [initial(wanted_reagent.name)]."

/datum/bounty/item/chef/popcorn
	name = "Popcorn Bags"
	description = "Popcorn is required for a loyalist recruitment drive."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 3
	wanted_types = list(/obj/item/food/popcorn = TRUE)

/datum/bounty/item/chef/onionrings
	name = "Onion Rings"
	description = "This food has gathered the interest of our benefactors. Ship some immediately."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 3
	wanted_types = list(/obj/item/food/onionrings = TRUE)

/datum/bounty/item/chef/icecreamsandwich
	name = "Ice Cream Sandwiches"
	description = "A nearby district administrator has apparently been screaming for this stuff."
	reward = CARGO_CRATE_VALUE * 8
	required_count = 3
	wanted_types = list(/obj/item/food/icecreamsandwich = TRUE)

/datum/bounty/item/chef/strawberryicecreamsandwich
	name = "Strawberry Ice Cream Sandwiches"
	description = "A nearby district administrator has apparently been screaming for this stuff."
	reward = CARGO_CRATE_VALUE * 10
	required_count = 3
	wanted_types = list(/obj/item/food/strawberryicecreamsandwich = TRUE)

/datum/bounty/item/chef/bread
	name = "Bread"
	description = "Problems with central planning have led to bread prices skyrocketing. Ship some bread to ease tensions."
	reward = CARGO_CRATE_VALUE * 2
	wanted_types = list(
		/obj/item/food/bread = TRUE,
		/obj/item/food/breadslice = TRUE,
		/obj/item/food/bun = TRUE,
		/obj/item/food/pizzabread = TRUE,
		/obj/item/food/rawpastrybase = TRUE,
	)

/datum/bounty/item/chef/pie
	name = "Pie"
	description = "3.14159? No! City management wants edible pie! Ship a whole one."
	reward = 314 //Screw it I'll do this one by hand
	wanted_types = list(/obj/item/food/pie = TRUE)

/datum/bounty/item/chef/salad
	name = "Salad or Rice Bowls"
	description = "City management is going on a health binge. Your order is to ship salad or rice bowls."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 3
	wanted_types = list(/obj/item/food/salad = TRUE)

/datum/bounty/item/chef/carrotfries
	name = "Carrot Fries"
	description = "Night sight can mean life or death! A shipment of carrot fries is the order."
	reward = CARGO_CRATE_VALUE * 7
	required_count = 3
	wanted_types = list(/obj/item/food/carrotfries = TRUE)

/datum/bounty/item/chef/poppypretzel
	name = "Poppy Pretzel"
	description = "Westwatch has been nonstop requesting poppy related food items for some reason."
	reward = CARGO_CRATE_VALUE * 6
	wanted_types = list(/obj/item/food/poppypretzel = TRUE)

/datum/bounty/item/chef/hotdog
	name = "Hot Dog"
	description = "City management is conducting taste tests to determine the best hot dog recipe. Ship your district's version to participate."
	reward = CARGO_CRATE_VALUE * 16
	wanted_types = list(/obj/item/food/hotdog = TRUE)

/datum/bounty/item/chef/eggplantparm
	name = "Eggplant Parmigianas"
	description = "One of the city's district administrators really likes this specific food for some reason."
	reward = CARGO_CRATE_VALUE * 7
	required_count = 3
	wanted_types = list(/obj/item/food/eggplantparm = TRUE)

/datum/bounty/item/chef/muffin
	name = "Muffins"
	description = "This delicious breakfast food has been heavily requested by various high ranking loyalists."
	reward = CARGO_CRATE_VALUE * 6
	required_count = 3
	wanted_types = list(/obj/item/food/muffin = TRUE)

/datum/bounty/item/chef/pancakes
	name = "Pancakes"
	description = "This delicious breakfast food has been heavily requested by various high ranking loyalists."
	reward = CARGO_CRATE_VALUE * 10
	required_count = 13
	wanted_types = list(/obj/item/food/pancakes = TRUE)

/datum/bounty/item/chef/pickles
	name = "Pickles"
	description = "The food control department lacks enough pickles to properly evaluate some of the different types of hard liquor."
	reward = CARGO_CRATE_VALUE * 10
	required_count = 7
	wanted_types = list(/obj/item/food/pickle = TRUE)
