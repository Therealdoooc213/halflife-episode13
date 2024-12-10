/obj/machinery/vending/breenwater
	name = "\improper Breen's Private Reserve"
	desc = "The finest, most pure water around."
	icon = 'hl13/icons/obj/vending.dmi'
	icon_state = "breen_machine"
	panel_type = "panel2"
	product_ads = "Stay hydrated.;A thirsty citizen is a inefficient citizen.;Drink Breen's private reserve!;The purest water around."
	products = list(/obj/item/reagent_containers/cup/soda_cans/breenwater = 15, /obj/item/reagent_containers/cup/soda_cans/breenwater/yellow = 15)
	resistance_flags = FIRE_PROOF
	refill_canister = /obj/item/vending_refill/breen
	default_price = 20
	extra_price = 1
	payment_department = NO_FREEBIES

/obj/item/vending_refill/breen
	machine_name = "Breen's Private Reserve"
	icon_state = "refill_cola"

/obj/machinery/vending/gifts
	name = "\improper Gift Vendor"
	desc = "A vending machine for selling general store goods."
	icon_state = "parts"
	icon_deny = "parts-deny"
	product_slogans = "Stimulate the economy!;Sedate resistive thoughts!;Purchase neat belongings!;Buy, Buy, Buy!"
	vend_reply = "Thank you for using Gift Vendor!"
	products = list(/obj/item/clothing/under/citizen = 3,
					/obj/item/camera_film = 10,
					/obj/item/camera = 3,
					/obj/item/hourglass = 2,
					/obj/item/instrument/harmonica = 1,
					/obj/item/instrument/piano_synth = 1,
					/obj/item/flashlight = 3,
					/obj/item/clothing/suit/jacket = 3,
					/obj/item/clothing/head/beanie/black = 3,
					/obj/item/clothing/head/flatcap = 3,
					/obj/item/customlock = 2,
					/obj/item/customblank = 2,
					/obj/item/storage/wallet = 10,
					/obj/item/radio/off/halflife = 3,
					/obj/item/reagent_containers/cup/bottle/welding_fuel = 3,
					/obj/item/food/rationpack/box = 5,
					/obj/item/clothing/gloves/fingerless = 3)

	contraband = list(/obj/item/lockpick = 1,
	                  /obj/item/clothing/suit/armor/browncoat = 1)

	premium = list(/obj/item/storage/backpack = 3,
				   /obj/item/binoculars = 3,
				   /obj/item/storage/box/halflife/ration = 3)

	payment_department = NO_FREEBIES
	light_mask = "gifts-light-mask"
	default_price = 20
	extra_price = 40
