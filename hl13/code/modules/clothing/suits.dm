/obj/item/clothing/suit/armor/civilprotection
	name = "civil protection vest"
	desc = "Kevlar weave protective vest. Provides a good level of protection to the chest."
	icon_state = "civilprotection"
	inhand_icon_state = "armoralt"
	icon = 'hl13/icons/obj/clothing/suits.dmi'

/obj/item/clothing/suit/armor/civilprotection/medical
	name = "medical officer vest"
	icon_state = "medicalofficer"

/obj/item/clothing/suit/armor/civilprotection/overseer
	name = "overseer vest"
	icon_state = "overseer"

/obj/item/clothing/suit/armor/civilprotection/trenchcoat
	name = "civil protection trench coat"
	desc = "A modified standard vest with a partial trenchcoat. Provides protection for your arms and legs, but will slightly slow you down."
	icon_state = "cp_trenchcoat"
	slowdown = 0.25
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS

/obj/item/clothing/suit/armor/civilprotection/trenchcoat/overseer
	name = "overseer trenchcoat"
	icon_state = "cp_trenchcoatoverseer"

/obj/item/clothing/suit/armor/civilprotection/divisional
	name = "divisional lead vest"
	desc = "Kevlar weave protective vest. Provides a good level of protection to the chest."
	icon_state = "dv_vest"
	inhand_icon_state = "armoralt"

/obj/item/clothing/suit/armor/overwatch
	name = "overwatch chestpiece"
	desc = "Sturdy kevlar weave surrounding a ceramic plated core. Provides excellent chest protection, but somewhat slows you down."
	icon_state = "overwatch"
	inhand_icon_state = "armoralt"
	slowdown = 0.25
	armor = list(MELEE = 40, BULLET = 40, LASER = 40, ENERGY = 30, BOMB = 40, BIO = 50, RAD = 30, FIRE = 50, ACID = 50, WOUND = 20)
	icon = 'hl13/icons/obj/clothing/suits.dmi'

/obj/item/clothing/suit/armor/overwatch/red
	icon_state = "overwatch_red"

/obj/item/clothing/suit/armor/overwatch/elite
	name = "overwatch elite chestpiece"
	desc = "Reinforced white kevlar weave surrounding a ceramic plated core. Provides incredible chest protection."
	icon_state = "overwatch_white"
	armor = list(MELEE = 50, BULLET = 50, LASER = 50, ENERGY = 40, BOMB = 40, BIO = 50, RAD = 50, FIRE = 50, ACID = 50, WOUND = 20)

//old armor found only as loot
/obj/item/clothing/suit/armor/kevlar
	name = "kevlar vest"
	desc = "A old kevlar vest. While still decently protective against bullets, the kevlar has broken down over time and is much less protective than it once was."
	icon_state = "bulletproof"
	inhand_icon_state = "armor"
	blood_overlay_type = "armor"
	armor = list(MELEE = 15, BULLET = 25, LASER = 10, ENERGY = 10, BOMB = 20, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 10)

//crafted armor vest
/obj/item/clothing/suit/armor/armored
	name = "armored vest"
	desc = "Multiple layers of cloth stitched with cables, and a metal insert placed inside. Not terrible against melee, but provides little protection against firearms."
	icon_state = "bulletproof"
	inhand_icon_state = "armor"
	blood_overlay_type = "armor"
	armor = list(MELEE = 15, BULLET = 10, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 50, ACID = 50, WOUND = 5)

/obj/item/clothing/suit/armor/browncoat
	name = "brown overcoat"
	desc = "A well padded overcoat which offers a small amount of protection."
	icon_state = "brownover"
	inhand_icon_state = "greatcoat"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 10, BOMB = 10, BIO = 0, RAD = 0, FIRE = 20, ACID = 20, WOUND = 0)
	cold_protection = CHEST|GROIN|LEGS|ARMS
	heat_protection = CHEST|GROIN|LEGS|ARMS
	strip_delay = 80
	clothing_flags = THICKMATERIAL
	icon = 'hl13/icons/obj/clothing/suits.dmi'

/obj/item/clothing/suit/utility/radiation/engineer
	name = "engineer suit"
	desc = "A suit which offers some protection from hazardous environments."
	icon = 'hl13/icons/obj/clothing/suits.dmi'
	icon_state = "cwuengi"
	inhand_icon_state = "bombsuit"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals/emergency_oxygen, /obj/item/geiger_counter)
	slowdown = 0
	armor = list(MELEE = 5, BULLET = 5, LASER = 0,ENERGY = 0, BOMB = 5, BIO = 60, RAD = 60, FIRE = 30, ACID = 30)

//Siggraph boiler bio suit
/obj/item/clothing/suit/bio_suit/boiler
	icon_state = "bio_boiler"
	slowdown = 0

/obj/item/clothing/head/bio_hood/boiler
	icon_state = "bio_boiler"
