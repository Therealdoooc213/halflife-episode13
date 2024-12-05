/datum/reagent/medicine/biogel
	name = "Biogel"
	description = "Has a 100% chance of instantly healing brute and burn damage. The chemical will heal up to 120 points of damage at 60 units applied. Touch application only."
	reagent_state = LIQUID
	color = "#14c40e"

/datum/reagent/medicine/biogel/expose_mob(mob/living/exposed_mob, methods=TOUCH, reac_volume, show_message = TRUE)
	. = ..()
	if(!iscarbon(exposed_mob))
		return
	var/mob/living/carbon/carbies = exposed_mob
	if(carbies.stat == DEAD)
		show_message = 0
	if(!(methods & (PATCH|TOUCH|VAPOR)))
		return
	var/current_bruteloss = carbies.getBruteLoss() // because this will be changed after calling adjustBruteLoss()
	var/current_fireloss = carbies.getFireLoss() // because this will be changed after calling adjustFireLoss()
	var/harmies = clamp(carbies.adjustBruteLoss(-1.25 * reac_volume, updating_health = FALSE, required_bodytype = affected_bodytype), 0, current_bruteloss)
	var/burnies = clamp(carbies.adjustFireLoss(-1.25 * reac_volume, updating_health = FALSE, required_bodytype = affected_bodytype), 0, current_fireloss)
	for(var/i in carbies.all_wounds)
		var/datum/wound/iter_wound = i
		iter_wound.on_synthflesh(reac_volume)
	var/need_mob_update = harmies + burnies

	if(need_mob_update)
		carbies.updatehealth()
	if(show_message)
		to_chat(carbies, span_danger("You feel your burns and bruises healing! It stings like hell!"))

	carbies.add_mood_event("painful_medicine", /datum/mood_event/painful_medicine)
	if(HAS_TRAIT_FROM(exposed_mob, TRAIT_HUSK, BURN) && carbies.getFireLoss() < UNHUSK_DAMAGE_THRESHOLD && (carbies.reagents.get_reagent_amount(/datum/reagent/medicine/c2/synthflesh) + reac_volume >= SYNTHFLESH_UNHUSK_AMOUNT))
		carbies.cure_husk(BURN)
		carbies.visible_message(span_nicegreen("A rubbery liquid coats [carbies]'s burns. [carbies] looks a lot healthier!")) //we're avoiding using the phrases "burnt flesh" and "burnt skin" here because carbies could be a skeleton or a golem or something
