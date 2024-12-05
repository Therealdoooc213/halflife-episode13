/obj/item/reagent_containers/pill/patch/medkit
	name = "medkit"
	desc = "A medical kit filled with biogel for quickly tending to injuries."
	list_reagents = list(/datum/reagent/medicine/biogel = 20)
	icon = 'hl13/icons/obj/medkits.dmi'
	icon_state = "medkit"
	apply_sound = 'hl13/sound/effects/smallmedkit1.ogg'

/obj/item/reagent_containers/pill/patch/medkit/manufactured
	name = "new medkit"
	desc = "A medical kit filled with biogel for quickly tending to injuries. This one looks very new, and recently made. Could be sold."

/obj/item/reagent_containers/pill/patch/medkit/vial
	name = "medvial"
	desc = "A small vial of biogel. Quick to apply, but doesn't heal much."
	list_reagents = list(/datum/reagent/medicine/biogel = 10)
	self_delay = 15
	icon_state = "medvial"

/obj/item/reagent_containers/pill/patch/grubnugget
	name = "grub nugget"
	desc = "A small nugget obtained from an antlion grub. You're not exactly sure what to do with this."
	list_reagents = list(/datum/reagent/medicine/biogel = 10)
	self_delay = 15
	icon = 'hl13/icons/mob/halflife.dmi'
	icon_state = "grub_nugget"
	apply_sound = 'hl13/sound/effects/smallmedkit1.ogg'

