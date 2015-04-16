if (isDedicated) exitWith {};
waitUntil {!(IsNull player)};
profileNameSpace setVariable ["CURRENTPLAYERLOAD", "CREWMAN"];
saveProfileNameSpace;

// ---------- YOUR LOADOUT STUFF

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;


player forceAddUniform "rhs_uniform_cu_ocp_patchless";
for "_i" from 1 to 10 do {player addItemToUniform "cse_bandage_basic";};
for "_i" from 1 to 10 do {player addItemToUniform "cse_packing_bandage";};
for "_i" from 1 to 10 do {player addItemToUniform "cse_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "cse_epinephrine";};
for "_i" from 1 to 5 do {player addItemToUniform "cse_morphine";};
player addItemToUniform "cse_earplugs_electronic";
player addVest "V_TacVest_khk";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellOrange";};
player addItemToVest "Chemlight_green";
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addItemToVest "SmokeShell";
player addItemToVest "SmokeShellBlue";
player addItemToVest "SmokeShellPurple";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 5 do {player addItemToVest "AV_15Rnd_9x19_Mag";};
player addBackpack "tf_rt1523g_sage";
player addHeadgear "H_CrewHelmetHeli_B";
player addGoggles "G_Bandanna_khk";

player addWeapon "rhs_weap_m4_grip2";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_EOTECH";
player addWeapon "av_m9";
player addWeapon "Binocular";
 
comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_14";
player linkItem "ItemGPS";
player linkItem "TFA_NVGoggles";