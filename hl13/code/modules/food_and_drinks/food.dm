/obj/item/food/meat/slab/xen
	name = "xen flesh"
	desc = "A slab of alien flesh. May not be entirely safe to eat."
	icon_state = "xenomeat"
	food_reagents = list(/datum/reagent/consumable/nutriment/raw = 3, /datum/reagent/toxin = 1)
	tastes = list("meat" = 1, "acid" = 1)
	foodtypes = RAW | MEAT | GROSS

/obj/item/food/meat/slab/xen/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/meat/steak/xen, rand(40 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/meat/steak/xen
	name = "xen steak"
	desc = "Cooked alien flesh. Should be safe to eat, although still unappetizing."
	food_reagents = list(/datum/reagent/consumable/nutriment = 4)
	tastes = list("meat" = 1, "acid" = 1)
	foodtypes = MEAT | GROSS

/obj/item/food/meat/rawcutlet/xen
	name = "raw xen cutlet"
	tastes = list("meat" = 1, "acid" = 1)
	foodtypes = RAW | MEAT | GROSS

/obj/item/food/meat/rawcutlet/xen/make_grillable()
	AddComponent(/datum/component/grillable, /obj/item/food/meat/cutlet/xen, rand(35 SECONDS, 50 SECONDS), TRUE, TRUE)

/obj/item/food/meat/cutlet/xen
	name = "xen cutlet"
	tastes = list("meat" = 1, "acid" = 1)
	foodtypes = MEAT | GROSS
