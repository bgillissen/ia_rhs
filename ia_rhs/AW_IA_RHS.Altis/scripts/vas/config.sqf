	//Allow player to respawn with his loadout? If true unit will respawn with all ammo from initial save! Set to false to disable this and rely on other scripts!
vas_onRespawn = false;
//Preload Weapon Config?
vas_preload = true;
//If limiting weapons its probably best to set this to true so people aren't loading custom loadouts with restricted gear.
vas_disableLoadSave = false;
//Amount of save/load slots
vas_customslots = 19; //9 is actually 10 slots, starts from 0 to whatever you set, so always remember when setting a number to minus by 1, i.e 12 will be 11.
//Disable 'VAS hasn't finished loading' Check !!! ONLY RECOMMENDED FOR THOSE THAT USE ACRE AND OTHER LARGE ADDONS !!!
vas_disableSafetyCheck = false;
/*
	NOTES ON EDITING!
	YOU MUST PUT VALID CLASS NAMES IN THE VARIABLES IN AN ARRAY FORMAT, NOT DOING SO WILL RESULT IN BREAKING THE SYSTEM!
	PLACE THE CLASS NAMES OF GUNS/ITEMS/MAGAZINES/BACKPACKS/GOGGLES IN THE CORRECT ARRAYS! TO DISABLE A SELECTION I.E
	GOGGLES vas_goggles = [""]; AND THAT WILL DISABLE THE ITEM SELECTION FOR WHATEVER VARIABLE YOU ARE WANTING TO DISABLE!

														EXAMPLE
	vas_weapons = ["srifle_EBR_ARCO_point_grip_F","arifle_Khaybar_Holo_mzls_F","arifle_TRG21_GL_F","Binocular"];
	vas_magazines = ["30Rnd_65x39_case_mag","20Rnd_762x45_Mag","30Rnd_65x39_caseless_green"];
	vas_items = ["ItemMap","ItemGPS","NVGoggles"];
	vas_backpacks = ["B_Bergen_sgg_Exp","B_AssaultPack_rgr_Medic"];
	vas_goggles = [""];

												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//If the arrays below are empty (as they are now) all weapons, magazines, items, backpacks and goggles will be available
//Want to limit VAS to specific weapons? Place the classnames in the array!
vas_weapons = [];
//Want to limit VAS to specific magazines? Place the classnames in the array!
vas_magazines = [];
//Want to limit VAS to specific items? Place the classnames in the array!
vas_items = [];
//Want to limit backpacks? Place the classnames in the array!
vas_backpacks = [];
//Want to limit goggles? Place the classnames in the array!
vas_glasses = [];


/*
	NOTES ON EDITING:
	THIS IS THE SAME AS THE ABOVE VARIABLES, YOU NEED TO KNOW THE CLASS NAME OF THE ITEM YOU ARE RESTRICTING. THIS DOES NOT WORK IN
	CONJUNCTION WITH THE ABOVE METHOD, THIs IS ONLY FOR RESTRICTING / LIMITING ITEMS FROM VAS AND NOTHING MORE

														EXAMPLE
	vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
	vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
	vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS

												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//Below are variables you can use to restrict certain items from being used.
//backpacks to remove from VAS
vas_r_backpacks = [
	"rhs_assault_umbts",
	"rhs_assault_umbts_engineer_empty"
];


//Weapons to remove from VAS
vas_r_weapons = [
//RHS russian rifle
	"rhs_weap_ak103",
	"rhs_weap_ak103_1",
	"rhs_weap_ak103_2",
	"rhs_weap_ak103_gp25",
	"rhs_weap_ak103_gp25_npz",
	"rhs_weap_ak103_npz",
	"rhs_weap_ak104",
	"rhs_weap_ak104_npz",
	"rhs_weap_ak105",
	"rhs_weap_ak105_npz",
	"rhs_weap_ak74m",
	"rhs_weap_ak74m_2mag",
	"rhs_weap_ak74m_2mag_camo",
	"rhs_weap_ak74m_2mag_npz",
	"rhs_weap_ak74m_camo",
	"rhs_weap_ak74m_camo_folded",
	"rhs_weap_ak74m_camo_npz",
	"rhs_weap_ak74m_desert",
	"rhs_weap_ak74m_desert_folded",
	"rhs_weap_ak74m_desert_npz",
	"rhs_weap_ak74m_folded",
	"rhs_weap_ak74m_gp25",
	"rhs_weap_ak74m_gp25_npz",
	"rhs_weap_ak74m_npz",
	"rhs_weap_ak74m_plummag",
	"rhs_weap_ak74m_plummag_folded",
	"rhs_weap_ak74m_plummag_npz",
	"rhs_weap_akm",
	"rhs_weap_akm_gp25",
	"rhs_weap_akms",
	"rhs_weap_akms_gp25",
	"rhs_weap_asval",
	"rhs_weap_asval_npz",
	"rhs_weap_pkm",
	"rhs_weap_pkp",
	"rhs_weap_svdp",
	"rhs_weap_svdp_npz",
	"rhs_weap_svdp_wd",
	"rhs_weap_svdp_wd_npz",
	"rhs_weap_svds",
	"rhs_weap_svds_npz",
//RHS russian launchers
	"rhs_weap_igla",
	"rhs_weap_rpg26",
	"rhs_weap_rpg7",
	"rhs_weap_rshg2",
//RHS russian pistols
	"rhs_weap_makarov_pmm",
	"rhs_weap_pya"
];
//Backpacks to remove from VAS
vas_r_backpacks = [
	"O_Mortar_01_support_F",
	"I_Mortar_01_support_F",
	"O_Mortar_01_weapon_F",
	"I_Mortar_01_weapon_F",
	"O_UAV_01_backpack_F",
	"I_UAV_01_backpack_F",
	"O_HMG_01_support_F",
	"I_HMG_01_support_F",
	"O_HMG_01_support_high_F",
	"I_HMG_01_support_high_F",
 	"O_HMG_01_weapon_F",
 	"I_HMG_01_weapon_F",
 	//"B_HMG_01_A_weapon_F",
 	"O_HMG_01_A_weapon_F",
 	"I_HMG_01_A_weapon_F",
  	"O_GMG_01_weapon_F",
  	"I_GMG_01_weapon_F",
  	//"B_GMG_01_A_weapon_F",
  	"O_GMG_01_A_weapon_F",
  	"I_GMG_01_A_weapon_F",
   	"O_HMG_01_high_weapon_F",
  	"I_HMG_01_high_weapon_F",
   	//"B_HMG_01_A_high_weapon_F",
   	"O_HMG_01_A_high_weapon_F",
   	"I_HMG_01_A_high_weapon_F",
   	"O_GMG_01_high_weapon_F",
   	"I_GMG_01_high_weapon_F",
   	//"B_GMG_01_A_high_weapon_F",
   	"O_GMG_01_A_high_weapon_F",
   	"I_GMG_01_A_high_weapon_F",
	"I_AT_01_weapon_F",
	"O_AT_01_weapon_F",
	"I_AA_01_weapon_F",
	"O_AA_01_weapon_F"
];

//Magazines to remove from VAS
vas_r_magazines = [
//RHS russian rifle ammo
	"rhs_30Rnd_545x39_AK",
	"rhs_30Rnd_545x39_AK_no_tracers",
	"rhs_30Rnd_545x39_AK_green",
	"rhs_30Rnd_545x39_7N10_AK",
	"rhs_30Rnd_545x39_7N22_AK",
	"rhs_30Rnd_545x39_7U1_AK",
	"rhs_45Rnd_545X39_7N22_AK",
	"rhs_45Rnd_545X39_7N10_AK",
	"rhs_45Rnd_545X39_AK_Green",
	"rhs_45Rnd_545X39_AK",
	"rhs_45Rnd_545X39_7U1_AK",
	"rhs_30Rnd_762x39mm",
	"rhs_30Rnd_762x39mm_tracer",
	"rhs_30Rnd_762x39mm_89",
	"rhs_30Rnd_762x39mm_U",
	"rhs_20rnd_9x39mm_SP5",
	"rhs_20rnd_9x39mm_SP6",
	"rhs_100Rnd_762x54mmR",
	"rhs_100Rnd_762x54mmR_green",
	"rhs_10Rnd_762x54mmR_7N1",
//RHS russian launcher ammo
	"rhs_rpg26_mag",
	"rhs_rshg2_mag",
	"rhs_rpg18_mag",
	"rhs_rpg7_PG7VL_mag",
	"rhs_rpg7_PG7VR_mag",
	"rhs_rpg7_TBG7V_mag",
	"rhs_rpg7_OG7V_mag",
	"rhs_mag_9k32_rocket",
	"rhs_mag_9k38_rocket",
//RHS russian pistol ammo
	"rhs_mag_9x19_17",
	"rhs_mag_9x18_12_57N181S"
];

//Items to remove from VAS
vas_r_items = [
	"I_UavTerminal",
	"O_UavTerminal",
	"U_C_Commoner1_1",
	"U_C_Commoner1_2",
	"U_C_Commoner1_3",
	"U_C_Commoner1_4",
	"U_C_Commoner1_5",
	"U_C_Commoner1_6",
	"U_C_Commoner2_1",
	"U_C_Commoner2_2",
	"U_C_Commoner2_3",
	"U_C_Commoner2_4",
	"U_C_Commoner2_5",
	"U_C_Commoner2_6",
	"U_I_GhillieSuit",
	"U_O_GhillieSuit",
	"U_I_Wetsuit",
	"U_O_Wetsuit",
	"U_NikosBody",
	"U_OrestesBody",
	"U_AttisBody",
	"U_AntigonaBody",
	"U_IG_Menelaos",
	"U_C_Novak",
	"U_OI_Scientist",
	"U_C_Poor_1",
	"U_C_Poor_2",
	"U_C_Scavenger_1",
	"U_C_Scavenger_2",
	"U_C_Farmer",
	"U_C_Fisherman",
	"U_C_WorkerOveralls",
	"U_C_FishermanOveralls",
	"U_C_PriestBody",
	"U_C_Poor_shorts_1",
	"U_C_Poor_shorts_2",
	"U_C_Commoner_shorts",
	"U_C_HunterBody_brn",
	"U_O_CombatUniform_ocamo",
	"U_O_CombatUniform_oucamo",
	"U_O_SpecopsUniform_blk",
	"U_O_SpecopsUniform_ocamo",
	"U_O_OfficerUniform_ocamo",
	"U_O_GhillieSuit",
	"U_O_PilotCoveralls",
	"U_O_Wetsuit",
	"U_I_CombatUniform",
	"U_I_CombatUniform_shortsleeve",
	"U_I_CombatUniform_tshirt",
	"U_I_OfficerUniform",
	"U_I_GhillieSuit",
	"U_I_HeliPilotCoveralls",
	"U_I_pilotCoveralls",
	"U_I_Wetsuit",
	"U_C_TeeSurfer_shorts_1",
	"U_C_TeeSurfer_shorts_2",
	"U_B_CombatUniform_sgg",
	"U_B_CombatUniform_sgg_tshirt",
	"U_B_CombatUniform_sgg_vest",
	"U_B_CombatUniform_wdl",
	"U_B_CombatUniform_wdl_tshirt",
	"U_B_CombatUniform_wdl_vest",
	"U_BasicBody",
//RHS russian attachements
	"rhs_bipod",
	"rhs_acc_tgpa",
	"rhs_acc_pbs1",
	"rhs_acc_dtk4short",
	"rhs_acc_tgpv",
	"rhs_acc_dtk4long",
	"rhs_acc_dtk4screws",
	"rhs_acc_muzzleFlash_dtk",
	"rhs_acc_dtk3",
	"rhs_acc_dtk1",
	"rhs_acc_dtk",
	"rhs_acc_dtk1l",
	"rhs_acc_ak5",
	"rhs_acc_1p29",
	"rhs_acc_1p78",
	"rhs_acc_pkas",
	"rhs_acc_ekp1",
	"rhs_acc_1p63",
	"rhs_acc_ekp1b",
	"rhs_acc_ekp1c",
	"rhs_acc_ekp1d",
	"rhs_acc_npz",
	"rhs_acc_pso1m2",
	"rhs_acc_pgo7v",
	"rhs_acc_1pn93_1",
	"rhs_acc_1pn93_2",
//RHS russian uniforms
	"rhs_uniform_vdv_emr_des",
	"rhs_uniform_emr_patchless",
	"rhs_uniform_msv_emr",
	"rhs_uniform_vdv_emr",
	"rhs_uniform_flora_patchless",
	"rhs_uniform_flora_patchless_alt",
	"rhs_uniform_flora",
	"rhs_uniform_vdv_flora",
	"rhs_uniform_gorka_r_g",
	"rhs_uniform_gorka_r_y",
	"rhs_chdkz_uniform_5",
	"rhs_chdkz_uniform_4",
	"rhs_chdkz_uniform_3",
	"rhs_chdkz_uniform_2",
	"rhs_chdkz_uniform_1",
	"rhs_uniform_mvd_izlom",
	"rhs_uniform_mflora_patchless",
	"rhs_uniform_vdv_mflora",
//RHS russian vests
	"rhs_6b13_Flora",
	"rhs_6b13_Flora_6sh92",
	"rhs_6b13_Flora_6sh92_headset_mapcase",
	"rhs_6b13_Flora_6sh92_radio",
	"rhs_6b13_Flora_6sh92_vog",
	"rhs_6b13_Flora_crewofficer",
	"rhs_6b13_EMR",
	"rhs_6b13",
	"rhs_6b13_6sh92",
	"rhs_6b13_6sh92_headset_mapcase",
	"rhs_6b13_6sh92_radio",
	"rhs_6b13_6sh92_vog",
	"rhs_6b13_crewofficer",
	"rhs_6b23",
	"rhs_6b23_6sh92",
	"rhs_6b23_6sh92_headset",
	"rhs_6b23_6sh92_headset_mapcase",
	"rhs_6b23_6sh92_radio",
	"rhs_6b23_6sh92_vog",
	"rhs_6b23_6sh92_vog_headset",
	"rhs_6b23_crewofficer",
	"rhs_6b23_crew",
	"rhs_6b23_engineer",
	"rhs_6b23_medic",
	"rhs_6b23_rifleman",
	"rhs_6b23_sniper",
	"rhs_6b23_vydra_3m",
	"rhs_6b23_digi",
	"rhs_6b23_digi_6sh92",
	"rhs_6b23_digi_6sh92_headset",
	"rhs_6b23_digi_6sh92_headset_spetsnaz",
	"rhs_6b23_digi_6sh92_headset_mapcase",
	"rhs_6b23_digi_6sh92_radio",
	"rhs_6b23_digi_6sh92_Spetsnaz",
	"rhs_6b23_digi_6sh92_vog",
	"rhs_6b23_digi_6sh92_vog_headset",
	"rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz",
	"rhs_6b23_digi_crewofficer",
	"rhs_6b23_digi_crew",
	"rhs_6b23_digi_engineer",
	"rhs_6b23_digi_medic",
	"rhs_6b23_digi_rifleman",
	"rhs_6b23_digi_sniper",
	"rhs_6b23_digi_vydra_3m",
	"rhs_6b23_ML",
	"rhs_6b23_ML_6sh92",
	"rhs_6b23_ML_6sh92_headset",
	"rhs_6b23_ML_6sh92_headset_mapcase",
	"rhs_6b23_ML_6sh92_radio",
	"rhs_6b23_ML_6sh92_vog",
	"rhs_6b23_ML_6sh92_vog_headset",
	"rhs_6b23_ML_crewofficer",
	"rhs_6b23_ML_crew",
	"rhs_6b23_ML_engineer",
	"rhs_6b23_ML_medic",
	"rhs_6b23_ML_rifleman",
	"rhs_6b23_ML_sniper",
	"rhs_6b23_ML_vydra_3m",
	"rhs_6sh92",
	"rhs_6sh92_headset",
	"rhs_6sh92_radio",
	"rhs_6sh92_vog",
	"rhs_6sh92_vog_headset",
	"rhs_6sh92_digi",
	"rhs_6sh92_digi_headset",
	"rhs_6sh92_digi_radio",
	"rhs_6sh92_digi_vog",
	"rhs_6sh92_digi_vog_headset",
//RHS russian helmet
	"rhs_6b26_green",
	"rhs_6b26_bala_green",
	"rhs_6b26_ess_green",
	"rhs_6b26_ess_bala_green",
	"rhs_6b26",
	"rhs_6b26_bala",
	"rhs_6b26_ess",
	"rhs_6b26_ess_bala",
	"rhs_6b27m_green",
	"rhs_6b27m_green_bala",
	"rhs_6b27m_green_ess",
	"rhs_6b27m_green_ess_bala",
	"rhs_6b27m_digi",
	"rhs_6b27m_digi_bala",
	"rhs_6b27m_digi_ess",
	"rhs_6b27m_digi_ess_bala",
	"rhs_6b27m",
	"rhs_6b27m_bala",
	"rhs_6b27m_ess",
	"rhs_6b27m_ess_bala",
	"rhs_6b27m_ml",
	"rhs_6b27m_ml_bala",
	"rhs_6b27m_ml_ess",
	"rhs_6b27m_ML_ess_bala",
	"rhs_6b28_green",
	"rhs_6b28_green_bala",
	"rhs_6b28_green_ess",
	"rhs_6b28_green_ess_bala",
	"rhs_6b28",
	"rhs_6b28_bala",
	"rhs_6b28_ess",
	"rhs_6b28_ess_bala",
	"rhs_6b28_flora",
	"rhs_6b28_flora_bala",
	"rhs_6b28_flora_ess",
	"rhs_6b28_flora_ess_bala",
	"rhs_Booniehat_digi",
	"rhs_Booniehat_flora",
	"rhs_ssh68"
];

//Goggles to remove from VAS
vas_r_glasses = [];