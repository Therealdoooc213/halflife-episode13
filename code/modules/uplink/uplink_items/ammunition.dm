/datum/uplink_category/ammo
	name = "Ammunition"
	weight = 7

/datum/uplink_item/ammo
	category = /datum/uplink_category/ammo
	surplus = 40

/datum/uplink_item/ammo/pistol
	name = "9mm Handgun Magazine"
	desc = "An additional 18-round 9mm magazine, for the USP Match pistol."
	item = /obj/item/ammo_box/magazine/usp9mm
	cost = 3
	purchasable_from = ~UPLINK_ALL_SYNDIE_OPS
	uplink_item_flags = SYNDIE_TRIPS_CONTRABAND

