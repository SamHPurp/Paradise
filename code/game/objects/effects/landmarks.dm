/obj/effect/landmark
	name = "landmark"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x2"
	anchored = 1
	unacidable = 1
	invisibility = 101

/obj/effect/landmark/New()
	..()
	set_tag()
	landmarks_list += src

/obj/effect/landmark/Destroy()
	landmarks_list -= src
	..()
	return QDEL_HINT_HARDDEL_NOW

// Non-standard station roles and misc

/obj/effect/landmark/wizard
	name = "wizard"

/obj/effect/landmark/wizard/New()
	..()
	wizardstart +=loc
	qdel(src)

/obj/effect/landmark/blob
	name = "blobstart"

/obj/effect/landmark/blob/New()
	..()
	blobstart += loc
	qdel(src)

/obj/effect/landmark/xeno
	name = "xeno"

/obj/effect/landmark/xeno/New()
	..()
	xeno_spawn += loc
	qdel(src)

/obj/effect/landmark/revenant
	name = "revenantspawn"

/obj/effect/landmark/carp
	name = "carpspawn"

/obj/effect/landmark/carp/New()
	..()
	carplist += loc

/obj/effect/landmark/holocarp
	name = "Holocarp Spawn"

/obj/effect/landmark/late_join
	name = "LateJoin"

/obj/effect/landmark/late_join/New()
	..()
	latejoin += loc
	qdel(src)

/obj/effect/landmark/late_join_gateway
	name = "LateJoinGateway"

/obj/effect/landmark/late_join_gateway/New()
	..()
	latejoin_gateway += loc
	qdel(src)

/obj/effect/landmark/late_join_cryo
	name = "LateJoinCryo"

/obj/effect/landmark/late_join_cryo/New()
	..()
	latejoin_cryo += loc
	qdel(src)

/obj/effect/landmark/late_join_cyborg
	name = "LateJoinCyborg"

/obj/effect/landmark/late_join_cyborg/New()
	..()
	latejoin_cyborg += loc
	qdel(src)

/obj/effect/landmark/prisonwarp
	name = "prisonwarp"

/obj/effect/landmark/prisonwarp/New()
	..()
	prisonwarp += loc
	qdel(src)

/obj/effect/landmark/prisonsecuritywarp
	name = "prisonsecuritywarp"

/obj/effect/landmark/prisonsecuritywarp/New()
	..()
	prisonsecuritywarp += loc
	qdel(src)

/obj/effect/landmark/ninja
	name = "ninjastart"

/obj/effect/landmarks/ninjastart/New()
	..()
	ninjastart += loc
	qdel(src)

/obj/effect/landmark/vox
	name = "voxstart"

/obj/effect/landmark/vox/New()
	..()
	raider_spawn += loc

/obj/effect/landmark/thunderdome1
	name = "tdome1"

/obj/effect/landmark/thunderdome1/New()
	..()
	tdome1 += loc
	qdel(src)

/obj/effect/landmark/thunderdome2
	name = "tdome2"

/obj/effect/landmark/thunderdome2/New()
	..()
	tdome2 += loc
	qdel(src)

/obj/effect/landmark/thunderdomeadmin
	name = "tdomeadmin"

/obj/effect/landmark/thunderdomeadmin/New()
	..()
	tdomeadmin += loc
	qdel(src)

/obj/effect/landmark/thunderdomeobserver
	name = "tdomeobserve"

/obj/effect/landmark/thunderdomeobserver/New()
	..()
	tdomeobserve += loc
	qdel(src)

/obj/effect/landmark/adminroom
	name = "aroomwarp"

/obj/effect/landmark/adminroom/New()
	..()
	aroomwarp += loc
	qdel(src)

/obj/effect/landmark/avatar
	name = "avatarspawn"

/obj/effect/landmark/avatar/New()
	..()
	avatarspawn += loc

/obj/effect/landmark/ert_director
	name = "ERT Director"

/obj/effect/landmark/ert_director/New()
	..()
	ertdirector += loc
	qdel(src)

/obj/effect/landmark/ert_member
	name = "Response Team"

/obj/effect/landmark/ert_member/New()
	..()
	emergencyresponseteamspawn += loc
	qdel(src)

/obj/effect/landmark/triple_ai
	name = "tripai"

/obj/effect/landmark/observer_start
	name = "Observer-Start"

/obj/effect/landmark/lightsout
	name = "lightsout"

/obj/effect/landmark/honksquad
	name = "HONKsquad"

/obj/effect/landmark/commando
	name = "Commando"

/obj/effect/landmark/syndie-commando
	name = "Syndicate-Commando"

/obj/effect/landmark/infiltrator
	name = "Syndicate-Infiltrator"

/obj/effect/landmark/infiltrator_leader
	name = "Syndicate-Infiltrator-Leader"

/obj/effect/landmark/infiltrator_admin
	name = "Syndicate-Infiltrator-Admin"

/obj/effect/landmark/syndicate
	name = "Syndicate-Spawn"

/obj/effect/landmark/nuclear_bomb
	name = "Nuclear-Bomb"

/obj/effect/landmark/sol_trader
	name = "traderstart_sol"

//Abductors spawns are in their own file, because, reasons.

/obj/effect/landmark/marauder_entry
	name = "Marauder Entry"

/obj/effect/landmark/marauder_exit
	name = "Marauder Exit"

/obj/effect/landmark/holding_facility
	name = "Holding Facility"

/obj/effect/landmark/awaystart
	name = "awaystart"

/obj/effect/landmark/proc/set_tag()
	tag = text("landmark*[name]")


// crew roles start locations

/obj/effect/landmark/start
	name = "start"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "x"
	anchored = 1

/obj/effect/landmark/start/New()
	..()
	if(name != "start")
		tag = "start*[name]"

/obj/effect/landmark/start/civilian
	name = "Civilian"

/obj/effect/landmark/start/janitor
	name = "Janitor"

/obj/effect/landmark/start/cargo_technician
	name = "Cargo Technician"

/obj/effect/landmark/start/bartender
	name = "Bartender"

/obj/effect/landmark/start/clown
	name = "clown"

/obj/effect/landmark/start/mime
	name = "Mime"

/obj/effect/landmark/start/quartermaster
	name = "Quartermaster"

/obj/effect/landmark/start/atmos
	name = "Life Support Specialist"

/obj/effect/landmark/start/chef
	name = "Chef"

/obj/effect/landmark/start/coroner
	name = "Coroner"

/obj/effect/landmark/start/shaft_miner
	name = "Shaft Miner"

/obj/effect/landmark/start/security_officer
	name = "Security Officer"

/obj/effect/landmark/start/botanist
	name = "Botanist"

/obj/effect/landmark/start/head_of_security
	name = "Head of Security"

/obj/effect/landmark/start/ai
	name = "AI"

/obj/effect/landmark/start/captain
	name = "Captain"

/obj/effect/landmark/start/detective
	name = "Detective"

/obj/effect/landmark/start/warden
	name = "Warden"

/obj/effect/landmark/start/chief_engineer
	name = "Chief Engineer"

/obj/effect/landmark/start/cyborg
	name = "Cyborg"

/obj/effect/landmark/start/head_of_personnel
	name = "Head of Personnel"

/obj/effect/landmark/start/librarian
	name = "Librarian"

/obj/effect/landmark/start/internal_affairs_agent
	name = "Internal Affairs Agent"

/obj/effect/landmark/start/station_engineer
	name = "Station Engineer"

/obj/effect/landmark/start/medical_doctor
	name = "Medical Doctor"

/obj/effect/landmark/start/scientist
	name = "Scientist"

/obj/effect/landmark/start/chemist
	name = "Chemist"

/obj/effect/landmark/start/roboticist
	name = "Roboticist"

/obj/effect/landmark/start/research_director
	name = "Research Director"

/obj/effect/landmark/start/geneticist
	name = "Geneticist"

/obj/effect/landmark/start/chief_medical_officer
	name = "Chief Medical Officer"

/obj/effect/landmark/start/virologist
	name = "Virologist"

/obj/effect/landmark/start/chaplain
	name = "Chaplain"

/obj/effect/landmark/start/blueshield
	name = "Blueshield"

/obj/effect/landmark/start/nt_rep
	name = "Nanotrasen Representative"

/obj/effect/landmark/start/magistrate
	name = "Magistrate"

/obj/effect/landmark/start/barber
	name = "Barber"

/obj/effect/landmark/start/mechanic
	name = "Mechanic"

/obj/effect/landmark/start/brig_physician
	name = "Brig Physician"

/obj/effect/landmark/start/sec_pod_pilot
	name = "Security Pod Pilot"

/obj/effect/landmark/start/psychiatrist
	name = "Psychiatrist"

/obj/effect/landmark/start/paramedic
	name = "Paramedic"


/obj/effect/landmark/start/set_tag()
	tag = "start*[name]"


//Costume spawner landmarks

/obj/effect/landmark/costume/New() //costume spawner, selects a random subclass and disappears

	var/list/options = typesof(/obj/effect/landmark/costume)
	var/PICK= options[rand(1,options.len)]
	new PICK(src.loc)
	qdel(src)

//SUBCLASSES. Spawn a bunch of items and disappear likewise
/obj/effect/landmark/costume/chicken/New()
	new /obj/item/clothing/suit/chickensuit(src.loc)
	new /obj/item/clothing/head/chicken(src.loc)
	new /obj/item/weapon/reagent_containers/food/snacks/egg(src.loc)
	qdel(src)

/obj/effect/landmark/costume/gladiator/New()
	new /obj/item/clothing/under/gladiator(src.loc)
	new /obj/item/clothing/head/helmet/gladiator(src.loc)
	qdel(src)

/obj/effect/landmark/costume/madscientist/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/suit/storage/labcoat/mad(src.loc)
	new /obj/item/clothing/glasses/gglasses(src.loc)
	qdel(src)

/obj/effect/landmark/costume/elpresidente/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/mask/cigarette/cigar/havana(src.loc)
	new /obj/item/clothing/shoes/jackboots(src.loc)
	qdel(src)

/obj/effect/landmark/costume/nyangirl/New()
	new /obj/item/clothing/under/schoolgirl(src.loc)
	new /obj/item/clothing/head/kitty(src.loc)
	qdel(src)

/obj/effect/landmark/costume/maid/New()
	new /obj/item/clothing/under/blackskirt(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/beret , /obj/item/clothing/head/rabbitears )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/sunglasses/blindfold(src.loc)
	qdel(src)

/obj/effect/landmark/costume/butler/New()
	new /obj/item/clothing/suit/wcoat(src.loc)
	new /obj/item/clothing/under/suit_jacket(src.loc)
	new /obj/item/clothing/head/that(src.loc)
	qdel(src)

/obj/effect/landmark/costume/scratch/New()
	new /obj/item/clothing/gloves/color/white(src.loc)
	new /obj/item/clothing/shoes/white(src.loc)
	new /obj/item/clothing/under/scratch(src.loc)
	if(prob(30))
		new /obj/item/clothing/head/cueball(src.loc)
	qdel(src)

/obj/effect/landmark/costume/highlander/New()
	new /obj/item/clothing/under/kilt(src.loc)
	new /obj/item/clothing/head/beret(src.loc)
	qdel(src)

/obj/effect/landmark/costume/prig/New()
	new /obj/item/clothing/suit/wcoat(src.loc)
	new /obj/item/clothing/glasses/monocle(src.loc)
	var/CHOICE= pick( /obj/item/clothing/head/bowlerhat, /obj/item/clothing/head/that)
	new CHOICE(src.loc)
	new /obj/item/clothing/shoes/black(src.loc)
	new /obj/item/weapon/cane(src.loc)
	new /obj/item/clothing/under/sl_suit(src.loc)
	new /obj/item/clothing/mask/fakemoustache(src.loc)
	qdel(src)

/obj/effect/landmark/costume/plaguedoctor/New()
	new /obj/item/clothing/suit/bio_suit/plaguedoctorsuit(src.loc)
	new /obj/item/clothing/head/plaguedoctorhat(src.loc)
	qdel(src)

/obj/effect/landmark/costume/nightowl/New()
	new /obj/item/clothing/under/owl(src.loc)
	new /obj/item/clothing/mask/gas/owl_mask(src.loc)
	qdel(src)

/obj/effect/landmark/costume/waiter/New()
	new /obj/item/clothing/under/waiter(src.loc)
	var/CHOICE= pick( /obj/item/clothing/head/kitty, /obj/item/clothing/head/rabbitears)
	new CHOICE(src.loc)
	new /obj/item/clothing/suit/apron(src.loc)
	qdel(src)

/obj/effect/landmark/costume/pirate/New()
	new /obj/item/clothing/under/pirate(src.loc)
	new /obj/item/clothing/suit/pirate_black(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/pirate , /obj/item/clothing/head/bandana )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/eyepatch(src.loc)
	qdel(src)

/obj/effect/landmark/costume/commie/New()
	new /obj/item/clothing/under/soviet(src.loc)
	new /obj/item/clothing/head/ushanka(src.loc)
	qdel(src)


/obj/effect/landmark/costume/imperium_monk/New()
	new /obj/item/clothing/suit/imperium_monk(src.loc)
	if(prob(25))
		new /obj/item/clothing/mask/gas/cyborg(src.loc)
	qdel(src)

/obj/effect/landmark/costume/holiday_priest/New()
	new /obj/item/clothing/suit/holidaypriest(src.loc)
	qdel(src)

/obj/effect/landmark/costume/marisawizard/fake/New()
	new /obj/item/clothing/head/wizard/marisa/fake(src.loc)
	new/obj/item/clothing/suit/wizrobe/marisa/fake(src.loc)
	qdel(src)

/obj/effect/landmark/costume/cutewitch/New()
	new /obj/item/clothing/under/sundress(src.loc)
	new /obj/item/clothing/head/witchwig(src.loc)
	new /obj/item/weapon/twohanded/staff/broom(src.loc)
	qdel(src)

/obj/effect/landmark/costume/fakewizard/New()
	new /obj/item/clothing/suit/wizrobe/fake(src.loc)
	new /obj/item/clothing/head/wizard/fake(src.loc)
	new /obj/item/weapon/twohanded/staff/(src.loc)
	qdel(src)

/obj/effect/landmark/costume/sexyclown/New()
	new /obj/item/clothing/mask/gas/sexyclown(src.loc)
	new /obj/item/clothing/under/sexyclown(src.loc)
	qdel(src)

/obj/effect/landmark/costume/sexymime/New()
	new /obj/item/clothing/mask/gas/sexymime(src.loc)
	new /obj/item/clothing/under/sexymime(src.loc)
	qdel(src)

/obj/effect/landmark/ruin
	var/datum/map_template/ruin/ruin_template

/obj/effect/landmark/ruin/New(loc, my_ruin_template)
	name = "ruin_[ruin_landmarks.len + 1]"
	..(loc)
	ruin_template = my_ruin_template
	ruin_landmarks |= src

/obj/effect/landmark/ruin/Destroy()
	ruin_landmarks -= src
	ruin_template = null
	. = ..()
