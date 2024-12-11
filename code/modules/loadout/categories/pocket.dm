/// Pocket items (Moved to backpack)
/datum/loadout_category/pocket
	category_name = "Other"
	category_ui_icon = FA_ICON_QUESTION
	type_to_generate = /datum/loadout_item/pocket_items
	tab_order = /datum/loadout_category/head::tab_order + 5
	/// How many pocket items are allowed
	VAR_PRIVATE/max_allowed = 2

/datum/loadout_category/pocket/New()
	. = ..()
	category_info = "([max_allowed] allowed)"

/datum/loadout_category/pocket/handle_duplicate_entires(
	datum/preference_middleware/loadout/manager,
	datum/loadout_item/conflicting_item,
	datum/loadout_item/added_item,
	list/datum/loadout_item/all_loadout_items,
)
	var/list/datum/loadout_item/pocket_items/other_pocket_items = list()
	for(var/datum/loadout_item/pocket_items/other_pocket_item in all_loadout_items)
		other_pocket_items += other_pocket_item

	if(length(other_pocket_items) >= max_allowed)
		// We only need to deselect something if we're above the limit
		// (And if we are we prioritize the first item found, FIFO)
		manager.deselect_item(other_pocket_items[1])
	return TRUE

/datum/loadout_item/pocket_items
	abstract_type = /datum/loadout_item/pocket_items

/datum/loadout_item/pocket_items/on_equip_item(
	obj/item/equipped_item,
	datum/preferences/preference_source,
	list/preference_list,
	mob/living/carbon/human/equipper,
	visuals_only = FALSE,
)
	// Backpack items aren't created if it's a visual equipping, so don't do any on equip stuff. It doesn't exist.
	if(visuals_only)
		return NONE

	return ..()

/datum/loadout_item/pocket_items/lipstick_black
	name = "Lipstick (Black)"
	item_path = /obj/item/lipstick/black
	additional_displayed_text = list("Black")

/datum/loadout_item/pocket_items/lipstick_blue
	name = "Lipstick (Blue)"
	item_path = /obj/item/lipstick/blue
	additional_displayed_text = list("Blue")


/datum/loadout_item/pocket_items/lipstick_green
	name = "Lipstick (Green)"
	item_path = /obj/item/lipstick/green
	additional_displayed_text = list("Green")


/datum/loadout_item/pocket_items/lipstick_jade
	name = "Lipstick (Jade)"
	item_path = /obj/item/lipstick/jade
	additional_displayed_text = list("Jade")

/datum/loadout_item/pocket_items/lipstick_purple
	name = "Lipstick (Purple)"
	item_path = /obj/item/lipstick/purple
	additional_displayed_text = list("Purple")

/datum/loadout_item/pocket_items/lipstick_red
	name = "Lipstick (Red)"
	item_path = /obj/item/lipstick
	additional_displayed_text = list("Red")

/datum/loadout_item/pocket_items/lipstick_white
	name = "Lipstick (White)"
	item_path = /obj/item/lipstick/white
	additional_displayed_text = list("White")

/datum/loadout_item/pocket_items/card_deck
	name = "Playing Card Deck"
	item_path = /obj/item/toy/cards/deck

/datum/loadout_item/pocket_items/dice_bag
	name = "Dice Bag"
	item_path = /obj/item/storage/dice
