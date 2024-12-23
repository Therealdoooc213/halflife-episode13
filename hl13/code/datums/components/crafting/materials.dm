/datum/crafting_recipe/scrap_metal
	name = "Recombine Scrap Metal"
	result = /obj/item/stack/sheet/iron
	reqs = list(/obj/item/stack/sheet/scrap_metal = 2)
	time = 1 SECONDS
	tool_paths = list(/obj/item/weldingtool)
	category = CAT_MISC

/datum/crafting_recipe/scrap_wood
	name = "Recombine Scrap Wood"
	result = /obj/item/stack/sheet/mineral/wood
	reqs = list(/obj/item/stack/sheet/mineral/scrap_wood = 2)
	time = 2 SECONDS
	category = CAT_MISC
