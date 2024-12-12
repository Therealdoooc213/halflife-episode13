/obj/item/clothing/shoes/jackboots/civilprotection
	desc = "Snug and secure black boots worn by civil protection forces."
	icon_state = "civilprotection"
	worn_icon = 'hl13/icons/mob/clothing/feet.dmi'
	icon = 'hl13/icons/obj/clothing/shoes.dmi'

/obj/item/clothing/shoes/jackboots/civilprotection/Initialize(mapload)
	. = ..()
	LoadComponent(/datum/component/squeak, list('hl13/sound/movement/civilprotection/gear1.ogg',\
												'hl13/sound/movement/civilprotection/gear2.ogg',\
												'hl13/sound/movement/civilprotection/gear3.ogg',\
												'hl13/sound/movement/civilprotection/gear4.ogg',\
												'hl13/sound/movement/civilprotection/gear5.ogg',\
												'hl13/sound/movement/civilprotection/gear6.ogg'), 30, 100, 0)

/obj/item/clothing/shoes/jackboots/civilprotection/overwatch
	desc = "Snug and secure black boots worn by overwatch forces."
	icon_state = "overwatch"

/obj/item/clothing/shoes/jackboots/civilprotection/overwatch/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, COMBINESUIT_TRAIT)
	LoadComponent(/datum/component/squeak, list('hl13/sound/movement/overwatch/gear1.ogg',\
												'hl13/sound/movement/overwatch/gear2.ogg',\
												'hl13/sound/movement/overwatch/gear3.ogg',\
												'hl13/sound/movement/overwatch/gear4.ogg',\
												'hl13/sound/movement/overwatch/gear5.ogg',\
												'hl13/sound/movement/overwatch/gear6.ogg'), 30, 100, 0)
