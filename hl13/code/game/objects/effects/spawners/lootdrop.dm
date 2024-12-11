//clothes, common melee weapons, random loot
/obj/effect/spawner/random/halflife/loot
	name = "common loot"
	spawn_loot_count = 1
	loot = list(
			/obj/item/crowbar/large = 2,
			/obj/item/storage/medkit/toxin
			)


/*
	loot = list(
				/obj/item/crowbar/large = 2,
				/obj/item/toy/crayon/spraycan,
				/obj/item/screwdriver,
				/obj/item/weldingtool,
				/obj/item/storage/backpack/satchel/leather,
				/obj/item/storage/backpack/satchel,
				/obj/item/storage/backpack/satchel/flat,
				/obj/item/storage/belt/fannypack/black,
				/obj/item/storage/belt/pouch,
				/obj/item/storage/wallet = 2,
				/obj/item/storage/briefcase,
				/obj/item/lockpick,
				/obj/item/clothing/under/citizen/refugee,
				/obj/item/radio/off/halflife = 2,
				/obj/item/ammo_casing/reusable/arrow/rebar,
				/obj/item/flashlight/seclite,
				/obj/item/flashlight = 2,
				/obj/item/knife/kitchen,
				/obj/item/lighter/greyscale = 2,
				/obj/item/storage/box/matches,
				/obj/item/stack/tape = 3,
				/obj/item/camera,
				/obj/item/stack/cable_coil/yellow = 2,
				/obj/item/stack/sheet/cloth,
				/obj/item/stack/sheet/iron/five,
				/obj/item/stack/sheet/scrap_metal = 3,
				/obj/item/stack/sheet/glass = 2,
				/obj/item/stack/sheet/mineral/uranium,
				/obj/item/stack/sheet/mineral/scrap_wood = 3,
				/obj/item/weaponcrafting/receiver = 3,
				/obj/item/reagent_containers/syringe,
				/obj/item/reagent_containers/medspray/sterilizine,
				/obj/item/reagent_containers/pill/patch/medkit,
				/obj/item/reagent_containers/pill/patch/medkit/vial = 2,
				/obj/item/circuitboard/machine/skill_station,
				/obj/item/skillchip/fitness,
				/obj/item/skillchip/painsuppress,
				/obj/item/skillchip/aiming,
				/obj/item/clothing/head/beret/durathread/unitednations,
				/obj/item/customblank,
				/obj/item/customlock,
				/obj/item/stack/spacecash/c10,
				/obj/item/stack/spacecash/c20,
				/obj/item/storage/medkit/toxin
				)

*/

//only consumable loot. Food, drinks, drugs, cigarettes, etc.
/obj/effect/spawner/random/halflife/loot/consumables
	name = "consumables loot"
	loot = list(
			/obj/item/crowbar/large = 2,
			/obj/item/storage/medkit/toxin
			)

/*
	loot = list(
				/obj/item/reagent_containers/cup/soda_cans/breenwater = 2,
				/obj/item/reagent_containers/cup/soda_cans/breenwater/red,
				/obj/item/reagent_containers/cup/soda_cans/breenwater/yellow,
				/obj/item/reagent_containers/glass/beaker/waterbottle/empty = 2,
				/obj/item/storage/box/halflife/ration,
				/obj/item/storage/box/halflife/worstration,
				/obj/item/reagent_containers/food/snacks/rationpack/lowgrade = 2,
				/obj/item/storage/fancy/cigarettes/cigars,
				/obj/item/cigarette/cigar,
				/obj/item/storage/fancy/cigarettes,
				/obj/item/cigarette = 2,
				/obj/item/reagent_containers/food/snacks/chips,
				/obj/item/reagent_containers/food/drinks/beer = 2,
				/obj/item/reagent_containers/food/drinks/bottle/gin,
				/obj/item/reagent_containers/food/drinks/bottle/hooch,
				/obj/item/reagent_containers/food/drinks/bottle/hcider,
				/obj/item/reagent_containers/food/drinks/bottle/fernet,
				/obj/item/reagent_containers/food/drinks/bottle/vodka,
				/obj/item/storage/pill_bottle/happiness,
				/obj/item/reagent_containers/pill/happiness,
				/obj/item/reagent_containers/pill/lsd,
				/obj/item/reagent_containers/food/drinks/mouthwash,
				/obj/item/reagent_containers/cup/bottle/welding_fuel,
				/obj/item/reagent_containers/glass/bottle/morphine
				)
*/

//specifically only alcohol
/obj/effect/spawner/random/halflife/loot/alcohol
	name = "alcohol loot"
	loot = list(
			/obj/item/crowbar/large = 2,
			/obj/item/storage/medkit/toxin
			)
/*

	loot = list(
				/obj/item/reagent_containers/food/drinks/beer,
				/obj/item/reagent_containers/food/drinks/bottle/gin,
				/obj/item/reagent_containers/food/drinks/bottle/hooch,
				/obj/item/reagent_containers/food/drinks/bottle/vodka,
				/obj/item/reagent_containers/food/drinks/bottle/hcider,
				/obj/item/reagent_containers/food/drinks/bottle/fernet
				)
*/

//only clothing items
/obj/effect/spawner/random/halflife/loot/clothing
	name = "clothing loot"
	loot = list(
			/obj/item/crowbar/large = 2,
			/obj/item/storage/medkit/toxin
			)

/*
	loot = list(
				/obj/item/clothing/under/citizen/refugee,
				/obj/item/clothing/head/beanie/black = 2,
				/obj/item/clothing/mask/balaclava,
				/obj/item/clothing/gloves/fingerless = 2,
				/obj/item/clothing/gloves/color/black,
				/obj/item/clothing/head/beret/vintage,
				/obj/item/clothing/head/soft/black,
				/obj/item/clothing/head/flatcap,
				/obj/item/clothing/glasses/eyepatch,
				/obj/item/clothing/suit/jacket,
				/obj/item/clothing/suit/jacket/miljacket,
				/obj/item/clothing/gloves/fishing,
				/obj/item/clothing/head/fishing,
				/obj/item/clothing/head/utility/welding,
				/obj/item/clothing/head/beret/durathread/unitednations,
				/obj/item/clothing/suit/armor/browncoat,
				/obj/item/clothing/mask/gas/hl2/swat,
				/obj/item/clothing/mask/gas/hl2/russia,
				/obj/item/clothing/mask/bandana/black,
				/obj/item/clothing/suit/bio_suit/boiler,
				/obj/item/clothing/head/bio_hood/boiler
				)
*/

//ammo
/obj/effect/spawner/random/halflife/loot/ammo
	name = "ammo loot"
	loot = list(
			/obj/item/crowbar/large = 2,
			/obj/item/storage/medkit/toxin
			)
/*
	loot = list(
				/obj/item/ammo_box/magazine/mp7 = 2,
				/obj/item/storage/box/lethalshot,
				/obj/item/ammo_box/magazine/usp9mm = 2,
				/obj/item/ammo_box/a357,
				/obj/item/ammo_casing/reusable/arrow/rebar = 2,
				/obj/item/ammo_box/magazine/m4a1,
				/obj/item/ammo_box/magazine/m45
				)
*/

//guns, armor, and some lesser items occasionally
/obj/effect/spawner/random/halflife/loot/rare
	name = "rare loot"
	loot = list(
			/obj/item/crowbar/large = 2,
			/obj/item/storage/medkit/toxin
			)
/*
	loot = list(
				/obj/item/gun/ballistic/automatic/pistol/usp,
				/obj/item/gun/ballistic/automatic/pistol/usp/no_mag,
				/obj/item/weaponcrafting/frame/usp = 2,
				/obj/item/weaponcrafting/frame/mp7 = 3,
				/obj/item/clothing/suit/armor/civilprotection = 3,
				/obj/item/clothing/under/citizen/rebel,
				/obj/item/weaponcrafting/frame/spas12,
				/obj/item/weaponcrafting/frame/coltpython,
				/obj/item/gun/ballistic/shotgun/doublebarrel/improvised,
				/obj/item/gun/ballistic/bow/crossbow/rebar = 2,
				/obj/item/gun/ballistic/automatic/pistol/m1911,
				/obj/item/gun/ballistic/automatic/pistol/m1911/no_mag,
				/obj/item/weaponcrafting/frame/m4a1,
				/obj/item/machinepiece/multifunctiontool = 2,
				/obj/item/grenade/syndieminibomb/bouncer,
				/obj/item/knife/combat = 2,
				/obj/item/melee/baton/security/loaded,
				/obj/item/stack/telecrystal/five,
				/obj/item/clothing/suit/armor/kevlar = 2,
				/obj/item/clothing/head/helmet/military
				)

*/
