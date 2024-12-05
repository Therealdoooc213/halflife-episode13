/datum/species/stalker
	name = "Stalker"
	id = SPECIES_STALKER
	changesource_flags = MIRROR_BADMIN | WABBAJACK | ERT_SPAWN
	damage_modifier = -50
	death_sound = 'hl13/sound/voice/stalker/stalker_die.ogg'
	no_equip_flags = ITEM_SLOT_MASK | ITEM_SLOT_OCLOTHING | ITEM_SLOT_GLOVES | ITEM_SLOT_FEET | ITEM_SLOT_ICLOTHING | ITEM_SLOT_SUITSTORE | ITEM_SLOT_HEAD
	inherent_traits = list(TRAIT_NOGUNS, TRAIT_RESISTCOLD, TRAIT_RESISTHIGHPRESSURE,TRAIT_RESISTLOWPRESSURE,
							TRAIT_NOBREATH, TRAIT_RADIMMUNE, TRAIT_VIRUSIMMUNE,
							TRAIT_NOCRITDAMAGE, TRAIT_GENELESS, TRAIT_NOSOFTCRIT, TRAIT_NOHARDCRIT, TRAIT_NOPAIN)
	mutanteyes = /obj/item/organ/eyes/robotic
	species_language_holder = /datum/language_holder/stalker
	var/info_text = "You are a <span class='danger'>Stalker</span>, a subservient mutant engineered by the combine. \
			you have an unquestioning loyalty to your masters, and have lost many normal human functions."

/datum/species/stalker/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))
	C.real_name = "stalker [rand(111,999)]"
	C.name = C.real_name
	C.faction += "combine"
	if(C.mind)
		C.mind.name = C.real_name
	C.dna.real_name = C.real_name
	C.cmode_music = 'hl13/sound/music/combat/crawlyard.ogg'
	to_chat(C, "[info_text]")

/datum/species/stalker/on_species_loss(mob/living/carbon/C)
	..()
	UnregisterSignal(C, COMSIG_MOB_SAY)

/datum/species/stalker/proc/handle_speech(datum/source, list/speech_args)
	playsound(source, 'hl13/sound/voice/stalker/stalker_talk.ogg', 50, 1, 1)

/datum/species/stalker/get_scream_sound(mob/living/carbon/human/stalker)
	return pick(
		'hl13/sound/voice/stalker/stalker_scream.ogg',
	)
