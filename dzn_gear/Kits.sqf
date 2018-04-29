// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

// friendly kits
#define spec_u ["TRYK_U_B_BLK_OD_Rollup_CombatUniform","TRYK_shirts_PAD_BLU3","TRYK_T_TAN_PAD","TRYK_T_camo_wood_marpat","CUP_I_B_PMC_Unit_13","TRYK_U_pad_hood_tan","TRYK_hoodie_Blk","TRYK_shirts_BLK_PAD_YEL","TRYK_shirts_OD_PAD_YEL","CUP_I_B_PMC_Unit_7"]
#define spec_v ["TRYK_V_ArmorVest_Ranger2","TRYK_V_ArmorVest_coyo2","TRYK_V_ArmorVest_khk2","TRYK_V_ArmorVest_Delta"]
#define spec_h ["rhsusf_opscore_fg_pelt_nsw","rhsusf_opscore_bk_pelt","rhsusf_opscore_ut_pelt","rhsusf_opscore_paint_pelt_nsw","TRYK_H_headsetcap_od","TRYK_ESS_CAP_OD"]
#define spec_g ["rhs_googles_clear","rhsusf_oakley_goggles_clr",""]

#define spec_w_r ["rhs_weap_m4a1_blockII","rhs_weap_m4_carryhandle_mstock","rhs_weap_m4a1_carryhandle_pmag","CUP_arifle_Mk16_CQC_SFG","rhs_weap_hk416d10","rhs_weap_mk18"]
#define spec_a_r ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"]

#define spec_w_o ["rhsusf_acc_eotech_552","rhsusf_acc_compm4","rhsusf_acc_T1_high","rhsusf_acc_RX01_NoFilter","rhsusf_acc_EOTECH",""]
#define spec_w_h ["rhsusf_acc_grip3","rhsusf_acc_grip2"]

#define spec_w_ar ["CUP_lmg_m249_pip3","CUP_lmg_m249_pip2"]
#define spec_a_ar ["CUP_100Rnd_TE4_Green_Tracer_556x45_M249","CUP_100Rnd_TE4_Green_Tracer_556x45_M249"]

#define spec_w_gr ["rhs_weap_m4a1_m203s","rhs_weap_m4a1_blockII_M203","CUP_arifle_Mk16_CQC_EGLM","rhs_weap_hk416d145_m320","rhs_weap_mk18_m320"]
#define spec_a_gr ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"]

cargo_kit_spec = [
    [],
	[["30Rnd_556x45_Stanag",20],["SmokeShell",10],["CUP_100Rnd_TE4_Green_Tracer_556x45_M249",6],["rhs_mag_m67",10],["1Rnd_HE_Grenade_shell",20],["DemoCharge_Remote_Mag",5]],
	[["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",4],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_quikclot",20],["ACE_Clacker",5],["TRYK_H_headsetcap_od",5],["TRYK_ESS_CAP_OD",5]],
	[]
];

kit_spec1_pl = [
	["<EQUIPEMENT >>  ",spec_u,spec_v,"tf_rt1523g","CUP_H_PMC_Cap_Back_PRR_Grey",""],
	["<PRIMARY WEAPON >>  ","rhsusf_weap_MP7A2_grip3","rhsusf_mag_40Rnd_46x30_FMJ",["","","rhsusf_acc_EOTECH","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["1Rnd_HE_Grenade_shell",8],["rhsusf_mag_40Rnd_46x30_JHP",5]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_spec_sl = [
	["<EQUIPEMENT >>  ",spec_u,spec_v,"tf_rt1523g","CUP_H_PMC_Cap_Back_PRR_Grey",""],
	["<PRIMARY WEAPON >>  ","rhsusf_weap_MP7A2_grip3","rhsusf_mag_40Rnd_46x30_FMJ",["","","rhsusf_acc_EOTECH","rhsusf_acc_grip3"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["1Rnd_HE_Grenade_shell",8],["rhsusf_mag_40Rnd_46x30_JHP",5]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2]]]
];

kit_spec_ftl = [
	["<EQUIPEMENT >>  ",spec_u,spec_v,"",spec_h,spec_g],
	["<PRIMARY WEAPON >>  ",spec_w_r,spec_a_r,["","","rhsusf_acc_ACOG_RMR",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["30Rnd_556x45_Stanag",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spec_gr = [
	["<EQUIPEMENT >>  ",spec_u,spec_v,"",spec_h,spec_g],
	["<PRIMARY WEAPON >>  ",spec_w_gr,spec_a_gr,["","",spec_w_o,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["30Rnd_556x45_Stanag",8],["1Rnd_HE_Grenade_shell",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_spec_ar = [
	["<EQUIPEMENT >>  ",spec_u,spec_v,"B_AssaultPack_cbr",spec_h,spec_g],
	["<PRIMARY WEAPON >>  ",spec_w_ar,spec_a_ar,["","","rhsusf_acc_compm4",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["CUP_100Rnd_TE4_Green_Tracer_556x45_M249",1],["rhsusf_mag_15Rnd_9x19_FMJ",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_Green_Tracer_556x45_M249",3]]]
];

kit_spec_r = [
	["<EQUIPEMENT >>  ",spec_u,spec_v,"B_AssaultPack_cbr",spec_h,spec_g],
	["<PRIMARY WEAPON >>  ",spec_w_r,spec_a_r,["","",spec_w_o,spec_w_h]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","rhs_m72a7_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_Green_Tracer_556x45_M249",2],["ACE_Clacker",1],["CUP_PipeBomb_M",1]]]
];



//enemy kits
#define mex_h ["","","","H_Bandanna_sgg","H_Booniehat_khk","H_Cap_surfer"]
#define mex_u ["U_I_C_Soldier_Bandit_3_F","TRYK_U_B_BLK_T_BG_WH","U_I_C_Soldier_Para_4_F","U_C_Poloshirt_blue","U_I_C_Soldier_Bandit_5_F"]
#define mex_v_r ["V_Pocketed_coyote_F","V_Pocketed_black_F","CUP_V_I_Carrier_Belt","V_BandollierB_khk"]

#define mex_w_r ["CUP_arifle_FNFAL","hlc_rifle_g3sg1","CUP_arifle_M16A2","rhs_weap_M590_5RD","CUP_arifle_AKS"]
#define mex_a_r ["CUP_20Rnd_762x51_FNFAL_M","hlc_20rnd_762x51_b_G3","CUP_30Rnd_556x45_Stanag","rhsusf_5Rnd_00Buck","CUP_30Rnd_762x39_AK47_M"]

#define mex_w_hg ["CUP_hgun_MicroUzi","CUP_hgun_TaurusTracker455","CUP_hgun_Glock17"]
#define mex_a_hg ["CUP_30Rnd_9x19_UZI","CUP_6Rnd_45ACP_M","CUP_17Rnd_9x19_glock17"]

kit_random_mex = [
    "kit_mex_r","kit_mex_r","kit_mex_r","kit_mex_r"
    ,"kit_mex_hg"	
];
   
kit_mex_r = [
	["<EQUIPEMENT >>  ",mex_u,mex_v_r,"",mex_h,""],
	["<PRIMARY WEAPON >>  ",mex_w_r,mex_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_mex_hg = [
	["<EQUIPEMENT >>  ",mex_u,mex_v_r,"",mex_h,""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ",mex_w_hg,mex_a_hg,["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_mex_police_r = [
	["<EQUIPEMENT >>  ","U_B_GEN_Commander_F","demian2435_police_vest","","demian2435_swat_helmet",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A4_Base","CUP_30Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["30Rnd_556x45_Stanag_green",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_mex_police_mg = [
	["<EQUIPEMENT >>  ","U_B_GEN_Commander_F","demian2435_police_vest","B_AssaultPack_blk","demian2435_swat_helmet",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_MG36","CUP_100Rnd_556x45_BetaCMag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag",2]]]
];

kit_mex_police_mm = [
	["<EQUIPEMENT >>  ","U_B_GEN_Commander_F","demian2435_police_vest","","demian2435_sniper_cap",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_M14","CUP_20Rnd_762x51_DMR",["","","CUP_optic_Leupold_VX3",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["20Rnd_762x51_Mag",6]]],
	["<BACKPACK ITEMS >> ",[]]
];


