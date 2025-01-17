/datum/job/prisoner
	title = JOB_PRISONER
	description = "Survive in the outlands, find a way into the city for supplies, help or rob citizens for your own gain."
	department_head = list("Nobody")
	total_positions = 0 //so refugees dont arrive by train
	spawn_positions = 3
	supervisors = "nobody"
	exp_granted_type = EXP_TYPE_CREW
	paycheck = PAYCHECK_ZERO
	config_tag = "PRISONER"

	outfit = /datum/outfit/job/prisoner
	plasmaman_outfit = /datum/outfit/plasmaman/prisoner

	display_order = JOB_DISPLAY_ORDER_PRISONER
	department_for_prefs = /datum/job_department/assistant

	exclusive_mail_goodies = TRUE
	mail_goodies = list (
		/obj/effect/spawner/random/contraband/prison = 1
	)

	family_heirlooms = list(/obj/item/pen/blue)
	rpg_title = "Defeated Miniboss"

	job_flags = JOB_EQUIP_RANK|JOB_CREW_MEMBER|JOB_NEW_PLAYER_JOINABLE|JOB_REOPEN_ON_ROUNDSTART_LOSS|JOB_ASSIGN_QUIRKS
	faction = FACTION_STATION

/datum/outfit/job/prisoner
	name = "Outlands Refugee"
	jobtype = /datum/job/prisoner

	id = null
	uniform = /obj/item/clothing/under/citizen/refugee
