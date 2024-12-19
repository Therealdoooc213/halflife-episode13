
/datum/supply_pack/goody
	access = NONE
	group = "Goodies"
	goody = TRUE
	discountable = SUPPLY_PACK_STD_DISCOUNTABLE

/datum/supply_pack/goody/stingbang
	name = "Stingbang Single-Pack"
	desc = "Contains one \"Stingbang\" grenade, perfect for playing meanhearted pranks."
	cost = PAYCHECK_COMMAND * 2.5
	access_view = ACCESS_WEAPONS
	contains = list(/obj/item/grenade/stingbang)

/datum/supply_pack/goody/Survivalknives_single
	name = "Survival Knife Single-Pack"
	desc = "Contains one sharpened survival knife. Guaranteed to fit snugly inside most boots."
	cost = PAYCHECK_COMMAND * 1.75
	contains = list(/obj/item/knife/combat/survival)

/datum/supply_pack/goody/firstaidbruises_single
	name = "Bruise Treatment Kit Single-Pack"
	desc = "A single brute medkit, perfect for recovering from a zombie attack.."
	cost = PAYCHECK_CREW * 4.5
	contains = list(/obj/item/storage/medkit/brute)

/datum/supply_pack/goody/firstaidburns_single
	name = "Burn Treatment Kit Single-Pack"
	desc = "A single burn medkit."
	cost = PAYCHECK_CREW * 4.5
	contains = list(/obj/item/storage/medkit/fire)

/datum/supply_pack/goody/firstaid_single
	name = "First Aid Kit Single-Pack"
	desc = "A single medkit, fit for healing most types of bodily harm."
	cost = PAYCHECK_CREW * 3.5
	contains = list(/obj/item/storage/medkit/regular)

/datum/supply_pack/goody/firstaidoxygen_single
	name = "Oxygen Deprivation Kit Single-Pack"
	desc = "A single oxygen deprivation medkit, marketed heavily to those with crippling fears of asphyxiation."
	cost = PAYCHECK_CREW * 4
	contains = list(/obj/item/storage/medkit/o2)

/datum/supply_pack/goody/firstaidtoxins_single
	name = "Toxin Treatment Kit Single-Pack"
	desc = "A single first aid kit focused on healing damage dealt by heavy toxins."
	cost = PAYCHECK_CREW * 4.5
	contains = list(/obj/item/storage/medkit/toxin)

/datum/supply_pack/goody/bandagebox_singlepack
	name = "Box of Bandages Single-Pack"
	desc = "A single box of DeForest brand bandages. For when you don't want to see your doctor."
	cost = PAYCHECK_CREW * 3
	contains = list(/obj/item/storage/box/bandages)

/datum/supply_pack/goody/toolbox // mostly just to water down coupon probability
	name = "Mechanical Toolbox"
	desc = "A fully stocked mechanical toolbox, for when you're too lazy to just print them out."
	cost = PAYCHECK_CREW * 3
	contains = list(/obj/item/storage/toolbox/mechanical)

/datum/supply_pack/goody/medipen_twopak
	name = "Medipen Two-Pak"
	desc = "Contains one standard epinephrine medipen and one standard emergency medkit medipen. For when you want to prepare for the worst."
	cost = PAYCHECK_CREW * 2.25
	contains = list(/obj/item/reagent_containers/hypospray/medipen, /obj/item/reagent_containers/hypospray/medipen/ekit)

/datum/supply_pack/goody/fishing_toolbox
	name = "Fishing Toolbox"
	desc = "Complete toolbox set for your fishing adventure. Contains a valuable tip. Advanced hooks and lines sold separetely."
	cost = PAYCHECK_CREW * 2
	contains = list(/obj/item/storage/toolbox/fishing)

/datum/supply_pack/goody/fishing_hook_set
	name = "Fishing Hooks Set"
	desc = "Set of various fishing hooks."
	cost = PAYCHECK_CREW
	contains = list(/obj/item/storage/box/fishing_hooks)

/datum/supply_pack/goody/fishing_line_set
	name = "Fishing Lines Set"
	desc = "Set of various fishing lines."
	cost = PAYCHECK_CREW
	contains = list(/obj/item/storage/box/fishing_lines)

/datum/supply_pack/goody/fishing_lure_set
	name = "Fishing Lures Set"
	desc = "A set of bite-resistant fishing lures to fish all (most) sort of fish. Beat randomness to a curb today!"
	cost = PAYCHECK_CREW * 8
	contains = list(/obj/item/storage/box/fishing_lures)

/datum/supply_pack/goody/fishing_hook_rescue
	name = "Rescue Fishing Hook Single-Pack"
	desc = "For when your fellow miner has inevitably fallen into a chasm, and it's up to you to save them."
	cost = PAYCHECK_CREW * 12
	contains = list(/obj/item/fishing_hook/rescue)

/datum/supply_pack/goody/premium_bait
	name = "Deluxe Fishing Bait Single-Pack"
	desc = "When the standard variety is not good enough for you."
	cost = PAYCHECK_CREW
	contains = list(/obj/item/bait_can/worm/premium)

/datum/supply_pack/goody/fish_feed
	name = "Can of Fish Food Single-Pack"
	desc = "For keeping your little friends fed and alive."
	cost = PAYCHECK_CREW
	contains = list(/obj/item/reagent_containers/cup/fish_feed)

/datum/supply_pack/goody/naturalbait
	name = "Freshness Jars full of Natural Bait Single-Pack"
	desc = "Homemade in the Spinward Sector."
	cost = PAYCHECK_CREW * 4 //rock on
	contains = list(/obj/item/storage/pill_bottle/naturalbait)

/datum/supply_pack/goody/telescopic_fishing_rod
	name = "Telescopic Fishing Rod Single-Pack"
	desc = "A collapsible fishing rod that can fit within a backpack."
	cost = PAYCHECK_CREW * 8
	contains = list(/obj/item/fishing_rod/telescopic)

/datum/supply_pack/goody/fish_analyzer
	name = "Fish Analyzer Single-Pack"
	desc = "A single analyzer to monitor fish's status and traits with, in case you don't have the technology to print one."
	cost = PAYCHECK_CREW * 2.5
	contains = list(/obj/item/fish_analyzer)

/datum/supply_pack/goody/fish_catalog
	name = "Fishing Catalog Single-Pack"
	desc = "A catalog containing all the fishy info you'll ever need."
	cost = PAYCHECK_LOWER
	contains = list(/obj/item/book/manual/fish_catalog)

/datum/supply_pack/goody/coffee_mug
	name = "Coffee Mug Single-Pack"
	desc = "A bog standard coffee mug, for drinking coffee."
	cost = PAYCHECK_LOWER
	contains = list(/obj/item/reagent_containers/cup/glass/mug)

/datum/supply_pack/goody/coffee_cartridge
	name = "Coffee Cartridge Single-Pack"
	desc = "A basic cartridge for a coffeemaker. Makes 4 pots."
	cost = PAYCHECK_LOWER
	contains = list(/obj/item/coffee_cartridge)

/datum/supply_pack/goody/coffee_cartridge_fancy
	name = "Fancy Coffee Cartridge Single-Pack"
	desc = "A fancy cartridge for a coffeemaker. Makes 4 pots."
	cost = PAYCHECK_CREW
	contains = list(/obj/item/coffee_cartridge/fancy)

/datum/supply_pack/goody/coffeepot
	name = "Coffeepot Single-Pack"
	desc = "A standard-sized coffeepot, for use with a coffeemaker."
	cost = PAYCHECK_CREW
	contains = list(/obj/item/reagent_containers/cup/coffeepot)

/datum/supply_pack/goody/climbing_hook
	name = "Climbing Hook Single-Pack"
	desc = "A less cheap imported climbing hook."
	cost = PAYCHECK_CREW * 5
	contains = list(/obj/item/climbing_hook)

/datum/supply_pack/goody/experimental_medication
	name = "Experimental Medication Single-Pack"
	desc = "A single bottle of Interdyne brand experimental medication, used for treating people suffering from hereditary manifold disease."
	cost = PAYCHECK_CREW * 6.5
	contains = list(/obj/item/storage/pill_bottle/sansufentanyl)
